resource "aws_vpc" "my-custom-vpc" {
  cidr_block       = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  tags = var.common_tags
}

resource "aws_internet_gateway" "my-vpc-igw" {
  vpc_id = aws_vpc.my-custom-vpc.id

  tags = var.common_tags
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.my-custom-vpc.id # Replace with your VPC ID
  cidr_block        = var.public_subnet_cidrs[count.index]        # Example CIDR block
  availability_zone = local.azs_names[count.index]         # Optional availability zone
  map_public_ip_on_launch = true             # Optional: Assign public IPs
 
  tags = var.common_tags
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my-custom-vpc.id
  
  tags = var.common_tags
}

resource "aws_route" "public_route_table" {
  route_table_id            = aws_route_table.public_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-vpc-igw.id
}

resource "aws_route_table_association" "public_route_table" {
  count = length(var.public_subnet_cidrs)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_route_table.id
}


