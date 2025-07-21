variable "project_name" {
    default = "vpc-terraform"
}

variable "environment" {
    default = "dev"
}

variable "owner" {
    default = "Rajashekar Reddy"
}

variable "region" {
    default = "ap-south-1"
}
variable "vpc_cidr" {
 default =  "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = true
}

variable "enable_dns_support" {
    default = true
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24" , "10.0.2.0/24"]
}

variable "common_tags" {
    default = {
    environment = "dev"
    project_name = "vpc-terraform"
    owner = "Rajashekar Reddy" 
  }
}