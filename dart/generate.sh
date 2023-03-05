#!/bin/bash -e

# Remove old generated source files
rm -rf src

# Fetch OpenAPI Schema an generate api client
# Docs: https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/dart.md
npx @openapitools/openapi-generator-cli generate \
    -i http://yago.cloud/api/schema/?lang=en \
    -g dart \
    --additional-properties=pubName="yago_cloud"

# Remove empty tests
rm -rf test

# Replace git user and repo name in README
sed -i -e 's/GIT_USER_ID/bitforge/g' README.md
sed -i -e 's/GIT_REPO_ID/yago_api_clients/g' README.md

# Remove backup file from sed on macOS
if [[ -f "README.md-e" ]]; then
    rm -f README.md-e
fi

# Auto format all dart files
dart format . -l 120

# Workaround for strange code generation bug
# Only happend in lib/model/summary_stats.dart
# Not sure if it's a bug in openapi-generator or yago api schema
echo "Applying 'Object.listFromJson()' fix to dart code"
sed -i -e "s/Object\.listFromJson/List<Object>\.from/g" lib/model/summary_stats.dart

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
