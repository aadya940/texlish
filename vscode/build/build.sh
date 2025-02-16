#!/bin/bash
set -euo pipefail

# clean build
rm -rf dist
mkdir dist

# YAML -> JSON
civet --no-config build/yaml2json.civet

# normal files
civet --no-config build/esbuild.civet "$@"
