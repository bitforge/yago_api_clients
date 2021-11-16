#!/bin/bash -e

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i http://genie-ar.ch/api/schema/ \
    -o src/ \
    -g typescript-fetch \
    --additional-properties=typescriptThreePlus=true

# Fix annoying typescript error in generated source
sed -i -e 's/this\.configuration\.fetchApi/this\.configuration\.fetchApi\!/g' src/runtime.ts

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
