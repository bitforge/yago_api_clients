#!/bin/bash -e
cd "$(dirname $0)"

# Remove old generated files
rm -rf lib
rm -rf doc

# Fetch OpenAPI Schema an generate api client
# Docs: https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/dart.md
npx @openapitools/openapi-generator-cli generate \
    -i http://yago.cloud/api/schema/?lang=en \
    -g dart-dio \
    --additional-properties=pubName="yago_cloud" \
    --additional-properties=serializationLibrary=json_serializable

# Remove unused tests
rm -rf test
dart pub remove test

# Auto format all dart files
dart format . -l 120

# Apply linter fixes
dart fix --apply

# upgrade packages
dart pub upgrade

# get packages
dart pub get

# Generate JSON serialization code
dart run build_runner build --delete-conflicting-outputs

CLR='\033[0;32m'
EOC='\033[0m'
printf "\n${CLR}CLIENT GENERATED SUCCESSFULLY${EOC}\n"
