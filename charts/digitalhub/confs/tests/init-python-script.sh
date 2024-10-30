#!/bin/sh
cp home/src/$TEST_SCRIPT home/git/digitalhub-tutorials/$TEST_FOLDER/$TEST_SCRIPT
cd home/git/digitalhub-tutorials/$TEST_FOLDER
pip install --cache-dir home/pipcache digitalhub[full] digitalhub-runtime-python digitalhub-runtime-container digitalhub-runtime-dbt digitalhub-runtime-kfp digitalhub-runtime-modelserve requests-oauthlib
python $TEST_SCRIPT
