#!/usr/bin/env bash
set -e

docker run --rm --volume=$PWD:/check mstruebing/editorconfig-checker
terraform fmt -recursive -check 

for folder in $(cd src/modules && ls -d */ | grep -v aa_template_module)
do
    docker run --rm \
        -v $(pwd):/data \
        --entrypoint="" \
        ghcr.io/terraform-linters/tflint:v0.34.1 \
        /bin/sh -c "cd ./src/modules/$folder && pwd && tflint --init -c ../../../.tflint.modules.hcl && tflint -c ../../../.tflint.modules.hcl"

    cd src/modules/$folder
    docker run --rm -v "$(pwd)/src:/src" aquasec/tfsec:v0.61 /src

    number_of_main_tf=$(find . -name "main.tf" -printf '.' | wc -m)
    if [ "$number_of_main_tf" -gt "0" ]; then
        >&2 echo "Styleguide Issue - Name main.tf according to the resources it creates"
        exit 1
    else
        echo "No main.tf files found"
    fi

    number_of_variables_tf=$(find . -name "variables.tf" -printf '.' | wc -m)
    if [ "$number_of_variables_tf" -eq "1" ]; then
        echo "Variables.tf exists"
    else
        >&2 echo "Styleguide Issue - Missing variables.tf"
        exit 1
    fi

    number_of_outputs_tf=$(find . -name "outputs.tf" -printf '.' | wc -m)
    if [ "$number_of_outputs_tf" -eq "1" ]; then
        echo "outputs.tf exists"
    else
        >&2 echo "Styleguide Issue - Missing outputs.tf"
        exit 1
    fi

    number_of_providers_tf=$(find . -name "providers.tf" -printf '.' | wc -m)
    if [ "$number_of_providers_tf" -eq "1" ]; then
        echo "providers.tf exists"
    else
        >&2 echo "Styleguide Issue - Missing providers.tf"
        exit 1
    fi

    cd ../../..
done
