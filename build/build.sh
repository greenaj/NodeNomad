#!/usr/bin/env bash

set -e
set -x

version=$(head -1 version.txt)

zip "nodenomad-${version}.zip" ./version.txt ../*.ps1 ../*.txt ../*.md
