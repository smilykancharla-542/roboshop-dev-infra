resource "aws_ssm_parameter" "sg-id" {
  count=length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/${var.sg_names}_sg_id"   ##roboshop-dev-catalogue_sg_id
  type  = "String"
  value = module.sg[count.index].sg-id
}