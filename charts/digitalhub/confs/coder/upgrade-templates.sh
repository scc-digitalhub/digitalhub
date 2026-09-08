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
coder login --use-token-as-session
remote_templates_dir=$(mktemp -d) || exit 1
trap 'rm -rf "$remote_templates_dir"' EXIT

template_matches() {
    local template_name="$1" template_dir="$2"
    local remote_dir="$remote_templates_dir/$template_name"

    coder templates pull "$template_name" "$remote_dir" || return 1
    rm -rf "$remote_dir/.terraform" "$remote_dir/.terraform.lock.hcl" || return 1
    diff -r "$template_dir" "$remote_dir" >/dev/null
}

{{- range .Values.coder.template.customTemplates }}
echo "Checking {{ .name }} template"
mkdir /home/coder/{{ .name }}/
cp /home/coder/custom-template/{{ .name }}-main.tf /home/coder/{{ .name }}/main.tf
template_variables={{ include "digitalhub.coderTemplateVariables" (list $ . ) }}
printf '%s\n' "$template_variables" | sha256sum > /home/coder/{{ .name }}/digitalhub-variables.sha256 || exit 1
if template_matches "{{ .name }}" "/home/coder/{{ .name }}"; then
    echo "Template {{ .name }} is unchanged; skipping push"
else
    echo "Upgrading {{ .name }} template (changed or comparison unavailable)"
{{- if $.Values.coder.cache.enabled}}
    cd /home/coder/{{ .name }}/
    terraform init
    cd /home/coder/
{{- end }}
    coder templates push --activate -d /home/coder/{{ .name }} {{ .name }} --variable "$template_variables" -y || exit 1
fi
coder template edit --default-ttl {{ .stopAfter }} --icon "{{ .iconUrl }}" {{ .name }}
{{- end }}
