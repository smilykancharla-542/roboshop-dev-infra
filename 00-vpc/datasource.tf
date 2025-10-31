data "aws_availability_zones" "available" {
  state = "available"
}

output "public_subnet_ids" {
    value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
    value = module.vpc.public_subnet_ids
}

output "database_subnet_ids" {
    value = module.vpc.public_subnet_ids
}