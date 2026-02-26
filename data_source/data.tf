data "aws_ami" "example" {
  
    most_recent      = true
    owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_instance" "get_instances"{
    instance_id = "i-0efef78984d8117f5"
}