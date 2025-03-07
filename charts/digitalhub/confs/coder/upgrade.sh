#!/bin/bash
set -m
until [ \
    "$(curl -s -w '%{http_code}' -o /dev/null "${CODER_URL}/api/v2/buildinfo")" \
    -eq 200 ]
do
    echo "waiting for coder to be ready"
    sleep 5
done
coder login --use-token-as-session
{{- range .Values.coder.template.customTemplates }}
echo "Upgrading {{ .name }} template"
mkdir /home/coder/{{ .name }}/
cp /home/coder/custom-template/{{ .name }}-main.tf /home/coder/{{ .name }}/main.tf
coder templates push --activate -d /home/coder/{{ .name }} {{ .name }} --variable minio_endpoint={{ $.Values.global.minio.endpoint }}:{{ $.Values.global.minio.endpointPort }},minio_bucket={{ $.Values.global.minio.bucket }},namespace={{ $.Release.Namespace }},service_type={{ $.Values.global.service.type }},node_port={{ .nodePort }}{{ if not (eq .name "code-toolbox-experimental")}},image={{ .image }}{{ end }},external_url={{ default $.Values.global.externalHostAddress $.Subcharts.coder.Values.externalHostAddress }},https={{ include "digitalhub.coderIngressTlsEnabled" $ }}{{ if eq .name "dremio"}},minio_digitalhub_user_secret={{ $.Values.global.minio.digitalhubUserSecret }}{{ end }}{{ if eq .name "jupyter"}},image_3_9={{ .image39 }},image_3_11={{ .image311 }}{{ end }}{{ if or (eq .name "jupyter") (eq .name "code-toolbox-experimental")}},privileged={{ .privileged }},stsenabled={{ $.Values.core.sts.enabled }}{{ if $.Values.core.ingress.enabled }}{{ with (index $.Values.core.ingress.hosts 0) }},dhcore_endpoint=https://{{ .host }},dhcore_issuer=https://{{ .host }}{{end}}{{else}},dhcore_endpoint="",dhcore_issuer=""{{ end }}{{ end }} -y 
coder template edit --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
