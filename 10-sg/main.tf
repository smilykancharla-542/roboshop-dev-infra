# module "catalogue" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value
# }

module "sg"{
    count=length(var.sg_names)
    source = "../../terraform-aws-sg"
    sg_names=var.sg_names[count.index]
    vpc_id =local.vpc_id


}