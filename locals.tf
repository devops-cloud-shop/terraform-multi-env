locals {
  common_name = "${var.project}-${var.environment}" #roboshop-dev
  common_tags = {
        Project = var.project
        Terraform = true
  }
}
