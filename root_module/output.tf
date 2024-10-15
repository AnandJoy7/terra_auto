output "vpc_ids" {
  description = "IDs of the created VPCs"
  value       = { for k, v in aws_vpc.us-east-1_vpc : k => v.id }
}

output "vpc_cidrs" {
  description = "CIDR blocks of the created VPCs"
  value       = { for k, v in aws_vpc.us-east-1_vpc : k => v.cidr_block }
}
