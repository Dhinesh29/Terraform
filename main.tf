# vpc CIDR
resource "aws_vpc" "my_vpc" {
	cidr_block = var.vpc_cidr
}

# Public Subnets
resource "aws_subnet" "pub_subnet_1" {
	vpc_id = aws_vpc.my_vpc.id
	cidr_block = var.public_subnet_1
}

resource "aws_subnet" "pub_subnet_2" {
	vpc_id = aws_vpc.my_vpc.id
	cidr_block = var.public_subnet_2
}

# Private Subnets
resource "aws_subnet" "pri_subnet_1" {
	vpc_id = aws_vpc.my_vpc.id
	cidr_block = var.private_subnet_1
}

resource "aws_subnet" "pri_subnet_2" {
	vpc_id = aws_vpc.my_vpc.id
	cidr_block = var.private_subnet_2
}






















/*
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.my_vpc.id
}
resource "aws_route_table" "pubrt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
      cidr_block = "var.route_block"
      gateway_id = aws_internet_gateway.myigw.id
  }
}
resource "aws_route_table_association" "pubsubassociate" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.pubrt.id
}

resource "aws_eip" "myeip" {
  vpc      = true
}
resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.public_subnet.id
}
resource "aws_route_table" "pvtrt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
      cidr_block = "var.route_block"
      gateway_id = aws_nat_gateway.mynat.id
  }
}
resource "aws_route_table_association" "pvtsubassociate" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.pvtrt.id
}
resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
      description      = "TLS from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }
}
*/
