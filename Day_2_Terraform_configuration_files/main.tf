resource "aws_instance" "name" {
  ami=var.ami_id
  instance_type=var.instance_type
  subnet_id = aws_subnet.name.id
  tags = {
    Name = "dev_instance"
  }
}

resource "aws_vpc" "name" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "dev_vpc"
  }
}

resource "aws_subnet" "name" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "dev_subnet"
  }
}