module "vpc" {
  source      = "../root_module"
  vpc_configs = var.vpc_configs
}

output "vpc_ids" {
  value = module.vpc.vpc_ids
}

