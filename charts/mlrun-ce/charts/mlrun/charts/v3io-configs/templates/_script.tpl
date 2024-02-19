{{- define "v3io-configs.script.lookupService" -}}
{{- $service := "v3iod-locator" }}
{{- $port := 8080 }}
{{- $lookupPath := "locate/v3iod" }}
{{- if .Values.global.v3io.lookupService }}
{{- $service := default "v3iod-locator" .Values.global.v3io.lookupService.name }}
{{- $port := default 8080 (int .Values.global.v3io.lookupService.servicePort) }}
{{- $lookupPath := default "locate/v3iod" .Values.global.v3io.lookupService.path }}
LOOKUP_SERVICE={{ printf "%s:%d" $service $port}}
LOOKUP_URL="http://${LOOKUP_SERVICE}/{{ $lookupPath }}"
{{- else }}
{{- $service := "v3iod-locator" }}
{{- $port := 8080 }}
{{- $lookupPath := "locate/v3iod" }}
LOOKUP_SERVICE={{ printf "%s.%s.svc:%d" $service .Release.Namespace $port}}
LOOKUP_URL="http://${LOOKUP_SERVICE}/{{ $lookupPath }}"
{{- end }}
LOCAL_V3IOD=$(curl --disable --silent --fail --connect-timeout 10 $LOOKUP_URL/$CURRENT_NODE_IP)

if [ "${LOCAL_V3IOD}" == "" ]; then
    echo "v3iod address is empty"
    exit 2
fi

mkdir -p {{ default "/igz/java/conf" .Values.global.v3io.configPath }}
mkdir -p {{ default "/igz/java/crash" .Values.global.v3io.crashPath }}
cp {{ default "/etc/config/v3io" .Values.global.v3io.configMountPath }}/* {{ default "/igz/java/conf" .Values.global.v3io.configPath }}
sed -i "s/CURRENT_NODE_IP/$LOCAL_V3IOD/g" $IGZ_DATA_CONFIG_FILE
{{- end -}}

{{- define "v3io-configs.script.javaHealthCheckTest" -}}
if [ -e "{{ include "v3io-configs.java.crashPath" . }}" ]; then
    echo "Found java client crash - exiting"
    exit 310
fi
{{- end -}}

{{- define "v3io-configs.script.httpHealthCheck" -}}
#!/usr/bin/env bash

set -e

PORT="0"
URI_PATH=""
HTTP_METHOD="GET"
PROTOCOL="tcp"
HOST="127.0.0.1"
SOCKET_PORT="0"
SOCKET_TEST="0"
HTTP_TEST="0"

for i in "$@"
do
case $i in
    -t=*|--socket-protocol=*)
    PROTOCOL="${i#*=}"
    ;;
    -h=*|--host=*)
    HOST="${i#*=}"
    ;;
    -p=*|--socket-port=*)
    SOCKET_PORT="${i#*=}"
    SOCKET_TEST="1"
    ;;
    -p=*|--port=*)
    PORT="${i#*=}"
    HTTP_TEST="1"
    ;;
    -u=*|--uri-path=*)
    URI_PATH="${i#*=}"
    ;;
    -m=*|--http-method=*)
    HTTP_METHOD="${i#*=}"
    ;;
esac
done

if [ "${SOCKET_TEST}" == "1" ]; then
    RC=echo < /dev/$PROTOCOL/$HOST/$SOCKET_PORT
    if [ "$RC" -ne "0" ]; then
        echo "Unable to communicate with [$HOST:$SOCKET_PORT] over [$PROTOCOL]. RC=$RC"
        exit $RC
    fi
fi

if [ "${HTTP_TEST}" == "1" ]; then
    if [[ "${URI_PATH}" =~ ^/.* ]]; then
        HEALTH_URL="http://${HOST}:${PORT}${URI_PATH}"
    else
        HEALTH_URL="http://${HOST}:${PORT}/${URI_PATH}"
    fi

    HTTP_STATUS=$(curl --disable --silent --fail --connect-timeout 10 --write-out "%{http_code}" --output /dev/null -X${HTTP_METHOD} "${HEALTH_URL}")
    if [ "${HTTP_STATUS}" -eq "0" ]; then
        echo "${HTTP_METHOD} for ${HEALTH_URL} failed (${HTTP_STATUS})"
        exit 121
    fi
    if [ "${HTTP_STATUS}" -ge "400" ]; then
        echo "${HTTP_METHOD} for ${HEALTH_URL} failed with status code ${HTTP_STATUS}"
        exit 123
    fi
fi

{{- end -}}

{{- define "v3io-configs.script.javaHealthCheck" -}}
#!/usr/bin/env bash
set -e

{{ include "v3io-configs.script.javaHealthCheckTest" . }}
{{- end -}}

{{- define "v3io-configs.script.httpHealthCheckWithJava" -}}
{{ include "v3io-configs.script.httpHealthCheck" . }}
{{ include "v3io-configs.script.javaHealthCheckTest" . }}
{{- end -}}
