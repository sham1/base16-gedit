#!/usr/bin/env bash

if ! command -v pybase16 >/dev/null; then
    echo "pybase16-builder not in \$PATH"
    exit 1
fi

REPO="${PWD}"
REPONAME=$(basename "${PWD}")
OUTPUT_DIR=$(mktemp -d -t 'base16.XXXXXXXXXX')

pybase16 update

pybase16 build -t "${REPO}" -o "${OUTPUT_DIR}"

mkdir -p "${REPO}/colors"
mv ${OUTPUT_DIR}/${REPONAME}/colors/*.xml "${REPO}/colors/"

rm -r "${OUTPUT_DIR}"
