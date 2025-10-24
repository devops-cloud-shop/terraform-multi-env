resource "aws_instance" "prav-terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.tf-allow-all.id] #we are associating the sg created with our instance
  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name}-tfvars-multi-env"
    }
  ) 
}


resource "aws_security_group" "tf-allow-all" {
  name        = "${local.common_name}-tfvars-multi-env"
  description = "Allow inbound traffic and all outbound traffic"
  
  egress {                  #outgoing or outbound traffic
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  ingress {              # ingress is inbound traffic -incoming
    from_port        = varr.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name}-tfvars-multi-env"
    }
  ) 
}