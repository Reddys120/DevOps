  resource "aws_instance" "this" {
  for_each = var.instances #terraform will give us variable called each
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           =  each.value
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  tags = {
    Name = each.key
    purpose = "terraform_practice"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

    ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

output "ec2_info" {
    value = aws_instance.this
}





# output "ec2_info" {
#   value = {

# "backend" = {
# "ami" = "ami-09c813fb71547fc4f"
# "arn" = "arn:aws:ec2:us-east-1:775430162300:instance/i-034cfa751ca305d68"
# "associate_public_ip_address" = true
# "availability_zone" = "us-east-1b"
# "capacity_reservation_specification" = tolist([
# {
#   "capacity_reservation_preference" = "open"
#   "capacity_reservation_target" = tolist([])
# },
# ])
# "cpu_core_count" = 1
# "cpu_options" = tolist([
# {
#   "amd_sev_snp" = ""
#   "core_count" = 1
#   "threads_per_core" = 2
# },
# ])
# "cpu_threads_per_core" = 2
# "credit_specification" = tolist([
# {
#   "cpu_credits" = "unlimited"
# },
# ])
# "disable_api_stop" = false
# "disable_api_termination" = false
# "ebs_block_device" = toset([])
# "ebs_optimized" = false
# "enable_primary_ipv6" = tobool(null)
# "enclave_options" = tolist([
# {
#   "enabled" = false
# },
# ])
# "ephemeral_block_device" = toset([])
# "get_password_data" = false
# "hibernation" = false
# "host_id" = ""
# "host_resource_group_arn" = tostring(null)
# "iam_instance_profile" = ""
# "id" = "i-034cfa751ca305d68"
# "instance_initiated_shutdown_behavior" = "stop"
# "instance_lifecycle" = ""
# "instance_market_options" = tolist([])
# "instance_state" = "running"
# "instance_type" = "t3.micro"
# "ipv6_address_count" = 0
# "ipv6_addresses" = tolist([])
# "key_name" = ""
# "launch_template" = tolist([])
# "maintenance_options" = tolist([
# {
#   "auto_recovery" = "default"
# },
# ])
# "metadata_options" = tolist([
# {
#   "http_endpoint" = "enabled"
#   "http_protocol_ipv6" = "disabled"
#   "http_put_response_hop_limit" = 1
#   "http_tokens" = "optional"
#   "instance_metadata_tags" = "disabled"
# },
# ])
# "monitoring" = false
# "network_interface" = toset([])
# "outpost_arn" = ""
# "password_data" = ""
# "placement_group" = ""
# "placement_partition_number" = 0
# "primary_network_interface_id" = "eni-0b68c72668ddba85d"
# "private_dns" = "ip-172-31-18-122.ec2.internal"
# "private_dns_name_options" = tolist([
# {
#   "enable_resource_name_dns_a_record" = false
#   "enable_resource_name_dns_aaaa_record" = false
#   "hostname_type" = "ip-name"
# },
# ])
# "private_ip" = "172.31.18.122"
# "public_dns" = "ec2-13-218-37-77.compute-1.amazonaws.com"
# "public_ip" = "13.218.37.77"
# "root_block_device" = tolist([
# {
#   "delete_on_termination" = true
#   "device_name" = "/dev/sda1"
#   "encrypted" = false
#   "iops" = 3000
#   "kms_key_id" = ""
#   "tags" = tomap({})
#   "tags_all" = tomap({})
#   "throughput" = 125
#   "volume_id" = "vol-018f3b7ebb7cab6a2"
#   "volume_size" = 20
#   "volume_type" = "gp3"
# },
# ])
# "secondary_private_ips" = toset([])
# "security_groups" = toset([
# "allow_tls",
# ])
# "source_dest_check" = true
# "spot_instance_request_id" = ""
# "subnet_id" = "subnet-00ebf2dc8814a1465"
# "tags" = tomap({
# "Name" = "backend"
# "purpose" = "terraform_practice"
# })
# "tags_all" = tomap({
# "Name" = "backend"
# "purpose" = "terraform_practice"
# })
# "tenancy" = "default"
# "timeouts" = null /* object */
# "user_data" = tostring(null)
# "user_data_base64" = tostring(null)
# "user_data_replace_on_change" = false
# "volume_tags" = tomap(null) /* of string */
# "vpc_security_group_ids" = toset([
# "sg-0afab6806d86c5cf1",
# ])
# }
# "frontend" = {
# "ami" = "ami-09c813fb71547fc4f"
# "arn" = "arn:aws:ec2:us-east-1:775430162300:instance/i-00f746f99e1c92af4"
# "associate_public_ip_address" = true
# "availability_zone" = "us-east-1b"
# "capacity_reservation_specification" = tolist([
# {
#   "capacity_reservation_preference" = "open"
#   "capacity_reservation_target" = tolist([])
# },
# ])
# "cpu_core_count" = 1
# "cpu_options" = tolist([
# {
#   "amd_sev_snp" = ""
#   "core_count" = 1
#   "threads_per_core" = 2
# },
# ])
# "cpu_threads_per_core" = 2
# "credit_specification" = tolist([
# {
#   "cpu_credits" = "unlimited"
# },
# ])
# "disable_api_stop" = false
# "disable_api_termination" = false
# "ebs_block_device" = toset([])
# "ebs_optimized" = false
# "enable_primary_ipv6" = tobool(null)
# "enclave_options" = tolist([
# {
#   "enabled" = false
# },
# ])
# "ephemeral_block_device" = toset([])
# "get_password_data" = false
# "hibernation" = false
# "host_id" = ""
# "host_resource_group_arn" = tostring(null)
# "iam_instance_profile" = ""
# "id" = "i-00f746f99e1c92af4"
# "instance_initiated_shutdown_behavior" = "stop"
# "instance_lifecycle" = ""
# "instance_market_options" = tolist([])
# "instance_state" = "running"
# "instance_type" = "t3.micro"
# "ipv6_address_count" = 0
# "ipv6_addresses" = tolist([])
# "key_name" = ""
# "launch_template" = tolist([])
# "maintenance_options" = tolist([
# {
#   "auto_recovery" = "default"
# },
# ])
# "metadata_options" = tolist([
# {
#   "http_endpoint" = "enabled"
#   "http_protocol_ipv6" = "disabled"
#   "http_put_response_hop_limit" = 1
#   "http_tokens" = "optional"
#   "instance_metadata_tags" = "disabled"
# },
# ])
# "monitoring" = false
# "network_interface" = toset([])
# "outpost_arn" = ""
# "password_data" = ""
# "placement_group" = ""
# "placement_partition_number" = 0
# "primary_network_interface_id" = "eni-0f3c5a49940ea29bf"
# "private_dns" = "ip-172-31-31-100.ec2.internal"
# "private_dns_name_options" = tolist([
# {
#   "enable_resource_name_dns_a_record" = false
#   "enable_resource_name_dns_aaaa_record" = false
#   "hostname_type" = "ip-name"
# },
# ])
# "private_ip" = "172.31.31.100"
# "public_dns" = "ec2-98-81-116-213.compute-1.amazonaws.com"
# "public_ip" = "98.81.116.213"
# "root_block_device" = tolist([
# {
#   "delete_on_termination" = true
#   "device_name" = "/dev/sda1"
#   "encrypted" = false
#   "iops" = 3000
#   "kms_key_id" = ""
#   "tags" = tomap({})
#   "tags_all" = tomap({})
#   "throughput" = 125
#   "volume_id" = "vol-033d74c803ebcb3b3"
#   "volume_size" = 20
#   "volume_type" = "gp3"
# },
# ])
# "secondary_private_ips" = toset([])
# "security_groups" = toset([
# "allow_tls",
# ])
# "source_dest_check" = true
# "spot_instance_request_id" = ""
# "subnet_id" = "subnet-00ebf2dc8814a1465"
# "tags" = tomap({
# "Name" = "frontend"
# "purpose" = "terraform_practice"
# })
# "tags_all" = tomap({
# "Name" = "frontend"
# "purpose" = "terraform_practice"
# })
# "tenancy" = "default"
# "timeouts" = null /* object */
# "user_data" = tostring(null)
# "user_data_base64" = tostring(null)
# "user_data_replace_on_change" = false
# "volume_tags" = tomap(null) /* of string */
# "vpc_security_group_ids" = toset([
# "sg-0afab6806d86c5cf1",
# ])
# }
# "mysql" = {
# "ami" = "ami-09c813fb71547fc4f"
# "arn" = "arn:aws:ec2:us-east-1:775430162300:instance/i-01d04c64c9185d648"
# "associate_public_ip_address" = true
# "availability_zone" = "us-east-1b"
# "capacity_reservation_specification" = tolist([
# {
#   "capacity_reservation_preference" = "open"
#   "capacity_reservation_target" = tolist([])
# },
# ])
# "cpu_core_count" = 1
# "cpu_options" = tolist([
# {
#   "amd_sev_snp" = ""
#   "core_count" = 1
#   "threads_per_core" = 2
# },
# ])
# "cpu_threads_per_core" = 2
# "credit_specification" = tolist([
# {
#   "cpu_credits" = "unlimited"
# },
# ])
# "disable_api_stop" = false
# "disable_api_termination" = false
# "ebs_block_device" = toset([])
# "ebs_optimized" = false
# "enable_primary_ipv6" = tobool(null)
# "enclave_options" = tolist([
# {
#   "enabled" = false
# },
# ])
# "ephemeral_block_device" = toset([])
# "get_password_data" = false
# "hibernation" = false
# "host_id" = ""
# "host_resource_group_arn" = tostring(null)
# "iam_instance_profile" = ""
# "id" = "i-01d04c64c9185d648"
# "instance_initiated_shutdown_behavior" = "stop"
# "instance_lifecycle" = ""
# "instance_market_options" = tolist([])
# "instance_state" = "running"
# "instance_type" = "t3.small"
# "ipv6_address_count" = 0
# "ipv6_addresses" = tolist([])
# "key_name" = ""
# "launch_template" = tolist([])
# "maintenance_options" = tolist([
# {
#   "auto_recovery" = "default"
# },
# ])
# "metadata_options" = tolist([
# {
#   "http_endpoint" = "enabled"
#   "http_protocol_ipv6" = "disabled"
#   "http_put_response_hop_limit" = 1
#   "http_tokens" = "optional"
#   "instance_metadata_tags" = "disabled"
# },
# ])
# "monitoring" = false
# "network_interface" = toset([])
# "outpost_arn" = ""
# "password_data" = ""
# "placement_group" = ""
# "placement_partition_number" = 0
# "primary_network_interface_id" = "eni-0c9dbaa4c6559ae1f"
# "private_dns" = "ip-172-31-24-233.ec2.internal"
# "private_dns_name_options" = tolist([
# {
#   "enable_resource_name_dns_a_record" = false
#   "enable_resource_name_dns_aaaa_record" = false
#   "hostname_type" = "ip-name"
# },
# ])
# "private_ip" = "172.31.24.233"
# "public_dns" = "ec2-54-91-219-1.compute-1.amazonaws.com"
# "public_ip" = "54.91.219.1"
# "root_block_device" = tolist([
# {
#   "delete_on_termination" = true
#   "device_name" = "/dev/sda1"
#   "encrypted" = false
#   "iops" = 3000
#   "kms_key_id" = ""
#   "tags" = tomap({})
#   "tags_all" = tomap({})
#   "throughput" = 125
#   "volume_id" = "vol-0193a0d74568b114f"
#   "volume_size" = 20
#   "volume_type" = "gp3"
# },
# ])
# "secondary_private_ips" = toset([])
# "security_groups" = toset([
# "allow_tls",
# ])
# "source_dest_check" = true
# "spot_instance_request_id" = ""
# "subnet_id" = "subnet-00ebf2dc8814a1465"
# "tags" = tomap({
# "Name" = "mysql"
# "purpose" = "terraform_practice"
# })
# "tags_all" = tomap({
# "Name" = "mysql"
# "purpose" = "terraform_practice"
# })
# "tenancy" = "default"
# "timeouts" = null /* object */
# "user_data" = tostring(null)
# "user_data_base64" = tostring(null)
# "user_data_replace_on_change" = false
# "volume_tags" = tomap(null) /* of string */
# "vpc_security_group_ids" = toset([
# "sg-0afab6806d86c5cf1",
# ])
# }
# }
# }

