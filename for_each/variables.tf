# variable "instances" {
 #   type = map
  #  default = {
   #     mongodb = "t3.micro"
    #    mysql = "t3.micro"
     #   redis = "t3.micro"
    #}
# }

variable "instances" {
    type = list
    default = ["mongodb","mysql","shipping"]
}