#!/bin/bash -e

# Remove old generated source files
rm -rf src

# Fetch OpenAPI Schema an generate api client
npx @openapitools/openapi-generator-cli generate \
    -i http://yago.cloud/api/schema/?lang=en \
    -g dart

# Remove empty tests
rm -rf test

# Replace git user and repo name in README
sed -i -e 's/GIT_USER_ID/bitforge/g' README.md
sed -i -e 's/GIT_REPO_ID/yago_api_clients/g' README.md

# Remove backup file from sed on macOS
if [[ -f "README.md-e" ]]; then
    rm -f README.md-e
fi

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
