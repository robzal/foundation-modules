module "ecs" {
  source                             = "git@github.com:robzal/foundation_modules.git//src/modules/ecs_cluster?ref=v1.1.0"
  name                               = var.ecs_config.name
  capacity_providers                 = var.ecs_config.capacity_providers
  default_capacity_provider_strategy = var.ecs_config.default_capacity_provider_strategy
}
