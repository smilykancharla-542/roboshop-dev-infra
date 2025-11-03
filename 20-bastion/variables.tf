variable "vpc_tags" {
    type = map
    default ={
        purpose = "roboshop"
        custom_tags=true
        donotdelete= true

    }
}
variable "project_name" {
    type = string
    default = "roboshop"
}
variable "environment"{
    type = string
    default = "dev"
}
variable "sg_names" {
  type=list
  default = ["catalogue","user","cart","bastion"]

}