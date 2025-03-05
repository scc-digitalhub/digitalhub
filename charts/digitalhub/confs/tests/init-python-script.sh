#!/bin/sh
cp home/src/$TEST_SCRIPT home/git/digitalhub-tutorials/$TEST_FOLDER/$TEST_SCRIPT
cd home/git/digitalhub-tutorials/$TEST_FOLDER
{{ include "digitalhub.packages" . }} requests-oauthlib
python $TEST_SCRIPT
