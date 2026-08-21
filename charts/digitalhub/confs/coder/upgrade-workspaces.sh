#!/bin/bash

# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

set -euo pipefail

until [ \
    "$(curl -s -w '%{http_code}' -o /dev/null "${CODER_URL}/api/v2/buildinfo")" \
    -eq 200 ]
do
    echo "waiting for coder to be ready"
    sleep 5
done

coder login --use-token-as-session

workspace_list="$(coder list --all --column workspace,status)"
mapfile -t workspace_states < <(
    awk '{ for (field = 1; field <= NF; field++) if ($field ~ /\//) print $field "\t" $NF }' \
        <<< "${workspace_list}"
)

if [ "${#workspace_states[@]}" -eq 0 ] || [ -z "${workspace_states[0]}" ]; then
    echo "No Coder workspaces found"
    exit 0
fi

failed=0
for workspace_state in "${workspace_states[@]}"; do
    IFS=$'\t' read -r workspace initial_status <<< "${workspace_state}"
    echo "Upgrading ${workspace} workspace"
    if ! coder update --use-parameter-defaults "${workspace}"; then
        echo "Failed to upgrade ${workspace} workspace" >&2
        failed=1
    fi

    if [ "${initial_status}" = "Stopped" ]; then
        echo "Restoring ${workspace} workspace to stopped state"
        if ! coder stop --yes "${workspace}"; then
            echo "Failed to stop ${workspace} workspace" >&2
            failed=1
        fi
    fi
done

exit "${failed}"
