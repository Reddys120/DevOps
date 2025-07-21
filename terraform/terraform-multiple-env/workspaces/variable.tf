


# variable "instance_type" {
#   default = {
#     dev     = "t3.micro"
#     prod    = "t3.small"
#   }
# }

variable "instance_type" {
  default = {
    dev  = "t3.micro"
    test = "t3.small"
    uat  = "t3.medium"
    prod = "t3.large"
  }
}