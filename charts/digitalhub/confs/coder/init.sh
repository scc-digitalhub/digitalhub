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
{{- range .Values.coder.template.customTemplates }}
echo "Installing {{ .name }} template"
mkdir /home/coder/{{ .name }}/
cp /home/coder/custom-template/{{ .name }}-main.tf /home/coder/{{ .name }}/main.tf
coder templates create -d /home/coder/{{ .name }} {{ .name }} --variable {{ include "digitalhub.coderTemplateVariables" (list $ . ) }} -y 
coder template edit --default-ttl {{ .stopAfter }} --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
