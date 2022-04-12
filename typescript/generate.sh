#!/bin/bash -e

# Remove old generated source files
rm -rf src

# Pin openapi-generator version to avoid unintended changes
npx @openapitools/openapi-generator-cli version-manager set 5.4.0

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i https://yago.cloud/api/schema/\?lang=en \
    -g typescript-fetch \
    --additional-properties=typescriptThreePlus=true \
    --additional-properties=npmName=genie-api-client

# Fix annoying typescript error in generated source
sed -i -e 's/this\.configuration\.fetchApi/this\.configuration\.fetchApi\!/g' src/runtime.ts

# Remove backup file from sed on macOS
if [[ -f "src/runtime.ts-e" ]]; then
    rm -f src/runtime.ts-e
fi

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
