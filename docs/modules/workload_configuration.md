
# Itoc Workload Configuration
Intended for Itoc Managed Services integration.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_config"></a> [ecs\_config](#input\_ecs\_config) | AWS ECS Cluster configuration. Default is Fargate to allow for each launching of serverless containers. | <pre>object({<br>    name                               = string<br>    capacity_providers                 = list(string)<br>    default_capacity_provider_strategy = list(map(string))<br>  })</pre> | <pre>{<br>  "capacity_providers": [<br>    "FARGATE",<br>    "FARGATE_SPOT"<br>  ],<br>  "default_capacity_provider_strategy": [<br>    {<br>      "capacity_provider": "FARGATE"<br>    }<br>  ],<br>  "name": "ecs_cluster"<br>}</pre> | no |
## Outputs

No outputs.
## Providers

No providers.
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs"></a> [ecs](#module\_ecs) | git@github.com:robzal/foundation-modules.git//src/modules/ecs_cluster | v1.1.0 |
## Resources

No resources.
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation


