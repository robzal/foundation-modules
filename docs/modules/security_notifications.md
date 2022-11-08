

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer_prefix"></a> [customer\_prefix](#input\_customer\_prefix) | Prefix for all resources with the customer name. Should be lower case characters starting with an alpha character and be consistent across the environment. Only `-` as a special character. | `string` | n/a | yes |
| <a name="input_enable_guardduty_high_severity_notifications"></a> [enable\_guardduty\_high\_severity\_notifications](#input\_enable\_guardduty\_high\_severity\_notifications) | Enable high severity notifications from GuardDuty to be sent to the SNS topic. | `bool` | `true` | no |
| <a name="input_enable_guardduty_medium_severity_notifications"></a> [enable\_guardduty\_medium\_severity\_notifications](#input\_enable\_guardduty\_medium\_severity\_notifications) | Enable medium severity notifications from GuardDuty to be sent to the SNS topic. | `bool` | `true` | no |
| <a name="input_enable_security_hub_notifications"></a> [enable\_security\_hub\_notifications](#input\_enable\_security\_hub\_notifications) | Enable notifications from Security Hub to be sent to the SNS topic. | `bool` | `true` | no |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | SNS Topic to send all notifications to. | `string` | n/a | yes |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.guardduty_notifications_high_sev](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_rule.guardduty_notifications_medium_sev](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_rule.security_hub_event_rule](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.guardduty_notifications_high_sev](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_event_target.guardduty_notifications_medium_sev](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_event_target.target_for_security_hub_event_rule](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_target) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

