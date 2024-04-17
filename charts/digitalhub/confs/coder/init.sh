#!/bin/bash
set -m
until [ \
    "$(curl -s -w '%{http_code}' -o /dev/null "${CODER_URL}/api/v2/buildinfo")" \
    -eq 200 ]
do
    echo "waiting for coder to be ready"
    sleep 5
done
coder login
{{- range .Values.coder.customCoderTemplates }}
echo "Installing {{ .name }} template"
mkdir /home/coder/{{ .name }}/
cp /home/coder/custom-template/{{ .name }}-main.tf /home/coder/{{ .name }}/main.tf
coder templates create -d /home/coder/{{ .name }} {{ .name }} --variable namespace={{ $.Release.Namespace }},service_type={{ $.Values.global.service.type }},node_port={{ .nodePort }},image={{ .image }},external_url={{ default $.Values.global.externalHostAddress $.Subcharts.coder.Values.externalHostAddress }},https={{ include "coder.tlsEnabled" $.Subcharts.coder }}{{ if eq .name "jupyter"}},dhcore_endpoint=http://{{ include "core.fullname" $.Subcharts.core }}:{{ $.Subcharts.core.Values.service.port }}{{ end }} -y 
coder template edit --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
coder create --template="dashboard" digitalhub-dashboard -y
