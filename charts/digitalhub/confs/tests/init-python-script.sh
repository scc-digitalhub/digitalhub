#!/bin/sh

# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cp home/src/$TEST_SCRIPT home/git/digitalhub-tutorials/$TEST_FOLDER/$TEST_SCRIPT
cd home/git/digitalhub-tutorials/$TEST_FOLDER
{{ include "digitalhub.packages" . }} requests-oauthlib
python $TEST_SCRIPT
