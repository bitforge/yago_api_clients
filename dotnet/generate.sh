#!/bin/bash -e

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i http://genie-ar.ch/api/schema/ \
    -g csharp-netcore \
    --additional-properties=packageName="Genie.Api" \
    --additional-properties=library="httpclient"

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
