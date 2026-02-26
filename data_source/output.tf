output "ami_id" {
    value = data.aws_ami.example.id
}

output "aws_instance_info" {
    value = data.aws_instance.get_instances
}