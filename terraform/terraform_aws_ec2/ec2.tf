resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # local.instance_type  #If you want to pass argument to override variables.
  vpc_security_group_ids = [var.sg_id]
  tags                   = var.tags
}