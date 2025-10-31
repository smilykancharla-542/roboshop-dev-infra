module "vpc"{
    source="git::https://github.com/smilykancharla-542/terraform-aws-vpc.git"
    ##vpc
    vpc_cidr = var.vpc_cidr
    project_name =var.project_name
    environment = var.environment

    #public subnet(frontend)
    public_cidr_blocks = var.public_cidr_blocks
    #private subnet(backend)
    private_cidrs = var.private_cidrs
    #dabase (databse)
    database_cidrs =var.database_cidrs


}