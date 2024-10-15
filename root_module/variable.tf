variable "vpc_configs" {
  description = "Map of VPC configurations to create"
  type        = map(object({
    cidr_block           = string
    enable_dns_support   = bool
    enable_dns_hostnames = bool
    tags                 = map(string)
  }))
}