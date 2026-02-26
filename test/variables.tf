variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tag_name" {
    type = string
    default = "terraform_practice"
}

variable "sg_name" {
    type = string
    default = "sg_terraform"
}

variable "sg_description" {
    type = string
    default = "sg_terraform_descrtiopn"
}

variable "sg_from_port" {
    type = number
    default = 0
}

variable "sg_to_port" {
    type = number
    default = 0
}

variable "sg_cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_ipv6_cidr_blocks" {
    type = list(string)
    default = ["::/0"]
}

variable "sg_tags" {
    type = map
    default = {
        name = "sg_test"
    }
}

variable "environment" {
    default = "dev"
}

variable "instances"{
    type = list(string)
    default = ["mangodb","mysql","redis"]
}

variable "domain_name" {
    type = string
    default = "nagababu.online"
}

variable "hosted_zone" {
    type = string
    default = "Z0615773238DUFIUSL8RV"
}

