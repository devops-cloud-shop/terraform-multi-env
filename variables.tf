variable "ami_id" {
    type    = string
    default = "ami-09c813fb71547fc4f"
}


variable "project" {
    default = "roboshop"
}


variable "common_tags" {
    type = map
    default = {
        Project = "roboshop"
        Terraform = true
    }
}

variable "sg_name" {
    type    = string
    default = "tf-allow-all"
}

variable "egress_from_port" {
    default = 0
  
}
variable "egress_to_port" {
    type    = number
    default = 0
}
variable "ingress_from_port" {
    default = 0
  
}
variable "ingress_to_port" {
    type    = number
    default = 0
}

variable "protocol" {
    type    = string
    default = "-1"
}

variable "cidr" {
    type    = list
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {
    type    = map
    default = {
        Name = "tf-allow-all"
    }
}