variable "instances" {
    type = list
    default = ["mongodeb","mysql","redis","rabbitmq","catalouge","users","cart","shipping","payment","frontend"]

}

variable "domain_name" {
    default = "nagababu.online"
}

variable "zone_id" {
    default = "Z0615773238DUFIUSL8RV"
}