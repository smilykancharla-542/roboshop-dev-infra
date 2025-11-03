variable "project_name"{
    default="roboshop"
}

variable  "environment"{
    default = "dev"

}

variable "sg_names" {
  type=list
  default = ["catalogue","user","cart"]

}