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
coder templates create -d /home/coder/{{ .name }} {{ .name }} --variable namespace={{ $.Release.Namespace }},service_type={{ $.Values.global.service.type }},node_port={{ .nodePort }},external_url={{ $.Values.global.externalHostAddress }},https={{ include "coder.tlsEnabled" $.Subcharts.coder }} -y 
coder template edit --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
coder create --template="dashboard" digitalhub-dashboard -y