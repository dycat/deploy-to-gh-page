#!/bin/sh -l

SOURCE_DIR=$INPUT_SOURCE

echo "Generate the site $SOURCE_DIR"
pipenv run pelican $SOURCE_DIR