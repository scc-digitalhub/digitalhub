#!/usr/bin/env bash

# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

curl "http://${DREMIO_URL}:9047/apiv2/bootstrap/firstuser" -X PUT \
      -H 'Authorization: _dremionull' -H 'Content-Type: application/json' \
      -d '{
         "userName": "'"$DREMIO_CODER_EMAIL"'",
         "password": "'"$ADMIN_PASSWORD"'",
         "firstName": "digitalhub",
         "lastName": "digitalhub",
         "email": "'"$DREMIO_CODER_EMAIL"'"
       }'
