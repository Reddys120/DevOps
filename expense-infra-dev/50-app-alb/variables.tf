variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
  default = "Z05965981KGPSGRWP69OQ"
}

variable "domain_name" {
  default = "reddytraders.shop"
}