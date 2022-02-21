#!/bin/bash -e

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i https://cap.bitforge.zuerich/api/schema \
    -g swift5 \
    --additional-properties=projectName=YagoApi \
    --additional-properties=swiftPackagePath=YagoApi

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"