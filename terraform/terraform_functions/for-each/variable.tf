variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
  default = "Z05965981KGPSGRWP69OQ"
}

variable "domain_name" {
  default = "reddytraders.shop"
}