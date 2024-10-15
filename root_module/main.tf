resource "aws_vpc" "us-east-1_vpc" {
  for_each = var.vpc_configs

  cidr_block           = each.value.cidr_block
  enable_dns_support   = each.value.enable_dns_support
  enable_dns_hostnames = each.value.enable_dns_hostnames
  tags                 = each.value.tags
}