#!/bin/bash

# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

set -m
until [ \
    "$(curl -s -w '%{http_code}' -o /dev/null "${CODER_URL}/api/v2/buildinfo")" \
    -eq 200 ]
do
    echo "waiting for coder to be ready"
    sleep 5
done
coder login
if [ $? = "1" ]; then
    echo "Got 1 -> assuming Coder already initialized, exiting cleanly"
    exit 0
fi
{{- range .Values.coder.template.customTemplates }}
echo "Installing {{ .name }} template"
mkdir /home/coder/{{ .name }}/
cp /home/coder/custom-template/{{ .name }}-main.tf /home/coder/{{ .name }}/main.tf
template_variables={{ include "digitalhub.coderTemplateVariables" (list $ . ) }}
printf '%s\n' "$template_variables" | sha256sum > /home/coder/{{ .name }}/digitalhub-variables.sha256 || exit 1
{{- if $.Values.coder.cache.enabled}}
cd /home/coder/{{ .name }}/
terraform init
cd /home/coder/
{{- end }}
coder templates create --default-ttl {{ .stopAfter }} -d /home/coder/{{ .name }} {{ .name }} --variable "$template_variables" -y
coder template edit --default-ttl {{ .stopAfter }} --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
