resource "aws_instance" "example" {
    count = 3
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instances[count.index]
    Project = "Roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.sg_description
 
  egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks
  }

  ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks
  }
  tags = var.sg_tags
}

