resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids =local.sg_id
  subnet_id=local.public_subnet_id
  

  tags =merge(var.vpc_tags, {
    Name = "${local.common_name_suffix}-bastion"   ##roboshop-dev-bastion
  })
}
