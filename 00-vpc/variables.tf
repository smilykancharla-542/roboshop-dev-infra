variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "project_name" {
    type = string
    default = "roboshop"
}
variable "environment"{
    type = string
    default = "dev"
}
variable "vpc_tags" {
    type = map
    default ={
        purpose = "roboshop"
        custom_tags=true
        donotdelete= true

    }
    
  
}

variable "igw_tags" {
    type = map
    default ={
        purpose ="testing internetgateway"
        custom_tags=true
    }
    
  
}

variable "public_cidr_blocks"{
    type =list 
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable private_cidrs{
    type=list 
    default = ["10.0.11.0/24","10.0.12.0/24"]
}
variable database_cidrs{
    type=list 
    default = ["10.0.21.0/24","10.0.22.0/24"]
}