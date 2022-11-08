#!/usr/bin/env bash
set -e

echo "Cleaning up existing docs folders"
rm ./docs/modules/*

export AWS_WEB_IDENTITY_TOKEN_FILE=/tmp/awscreds
config_location=$(pwd)
curl -H "Authorization: bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN" "$ACTIONS_ID_TOKEN_REQUEST_URL&audience=sts.amazonaws.com" | jq -r '.value' > $AWS_WEB_IDENTITY_TOKEN_FILE

cd $config_location

echo "Generating docs for Modules"
for folder in $(cd src/modules && ls -d */ | grep -v aa_template_module)
do
    echo "Generating docs for $folder"
    docker run --rm \
        --volume "$(pwd)/src/modules/${folder::-1}:/terraform-docs" \
        --volume "$config_location/.terraform-docs.modules.yml:/terraform-docs-config/.terraform-docs.yml" \
        -u $(id -u) \
        quay.io/terraform-docs/terraform-docs:0.16.0 \
        -c /terraform-docs-config/.terraform-docs.yml markdown /terraform-docs > ./docs/modules/${folder::-1}.md
done
