#!/bin/sh -l

SOURCE_DIR=${GITHUB_WORKSPACE}/$INPUT_SOURCE/content
OUTPUT_DIR=${GITHUB_WORKSPACE}/$INPUT_SOURCE/output
CONFIG_DIR=${GITHUB_WORKSPACE}/$INPUT_SOURCE/pelicanconf.py

echo "Generate the site $SOURCE_DIR $CONFIG_DIR"
pipenv run pelican $SOURCE_DIR -s $CONFIG_DIR -o $OUTPUT_DIR
# pipenv run pelican ./test_projects/hello/content