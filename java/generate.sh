#!/bin/bash -e

# Remove old generated source files
rm -rf src

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i http://dev.yago.cloud/api/schema/ \
    -g java \
    --additional-properties=apiPackage=yago.client.apis \
    --additional-properties=modelPackage=yago.client.models \
    --additional-properties=artifactId=YagoApi

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
