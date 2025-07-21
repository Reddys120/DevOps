locals {
    ami_id = data.aws_ami.joindevops.id # Cannot override values declared in locals
    instance_type = "t3.micro"
    name = "${var.project}-${var.component}-${var.environment}"
}