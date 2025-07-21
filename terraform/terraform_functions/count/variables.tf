variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z05965981KGPSGRWP69OQ"
}

variable "domain_name" {
  default = "reddytraders.shop"
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "dev"
  }
}