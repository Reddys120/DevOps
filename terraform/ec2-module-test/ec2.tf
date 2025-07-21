module "ec2" {
    #source = "../../terraform-aws-ec2"
    sg_id = "sg-0c2fc93ee1ecc8b94"
   #instance_type = "t3.medium"      #If you want to pass argument from module.
}

output "public_ip" {
   value = module.ec2.public_ip
}  