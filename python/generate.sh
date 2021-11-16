#!/bin/bash -e

# Fetch OpenAPI Schema an generate api client
# npx @openapitools/openapi-generator-cli generate \
#     -i http://genie-ar.ch/api/schema/ \
#     -g python \
#     --additional-properties=packageName="genie"

# Replace git user and repo name in README
sed -i '' -e 's/GIT_USER_ID/bitforge/g' README.md
sed -i '' -e 's/GIT_REPO_ID/genie-api-clients/g' README.md

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
