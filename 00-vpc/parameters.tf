resource "aws_ssm_parameter" "vpc-id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnets"
  type  = "String"
  value = join(",",module.vpc.public_subnet_ids)
}