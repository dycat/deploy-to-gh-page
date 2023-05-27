#!/bin/sh -l

SOURCE_DIR=$INPUT_SOURCE/content
OUTPUT_DIR=$INPUT_SOURCE/output
CONFIG_DIR=$INPUT_SOURCE/pelicanconf.py

echo "Generate the site $SOURCE_DIR $CONFIG_DIR"
pipenv run pelican $SOURCE_DIR -s $CONFIG_DIR -o $OUTPUT_DIR
# pipenv run pelican ./test_projects/hello/content