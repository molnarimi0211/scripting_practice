#!/bin/bash -eu

#if [[ $# -ne 1 ]]; then exit 1; fi

api='https://jvvkjy8utk.execute-api.eu-central-1.amazonaws.com/tourist/api/countries/all'

# api='https://jvvkjy8utk.execute-api.eu-central-1.amazonaws.com/tourist/api/countries/by-cca3'
# curl -s "$api/$1" | jq -r '.name.official'


curl -s "$api" | jq -r '.[] | "\(.name.official) - \(.cca3)"'
