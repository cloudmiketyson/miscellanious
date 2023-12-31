#!/usr/bin/env bash
set -e

file_locations=$(find . -maxdepth 2 -type f \( -name "backend.tf" \))

for f in $file_locations
do
    TF_MODULE_PATH=$(dirname $f) bash -c \
        "$(curl -fsSL https://raw.githubusercontent.com/cloudmiketyson/miscellanious/main/tools/terraform-create-all-workspaces.sh)"
done
