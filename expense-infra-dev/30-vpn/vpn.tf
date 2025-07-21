resource "aws_key_pair" "openvpnas" {
  key_name   = "openvpnas"
  public_key = file("C:\\Users\\HEllo\\Practice\\DevOps\\expense-infra-dev\\openvpnas.pub")
}


resource "aws_instance" "openvpn" {
  ami                     = data.aws_ami.openvpn.id
  key_name                = aws_key_pair.openvpnas.key_name
  instance_type           =  "t2.micro"
  vpc_security_group_ids  = [data.aws_ssm_parameter.vpn_sg_id.value]
  subnet_id     =   local.public_subnet_id
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-vpn"
    }
  ) 
}