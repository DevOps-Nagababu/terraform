variable "project"{
    default ="roboshop"
}

variable "instance_type"{
    default = {
        dev = "t3.micro"
        uat = "t3.smaill"
        prod = "t3.medium"
    }
}