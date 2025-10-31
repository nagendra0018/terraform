resource "aws_instance" "name" {
  ami=var.ami_id
  instance_type=var.instance_type
  subnet_id = aws_subnet.name.id
  tags = {
    Name = "test_instance"
  }
}

resource "aws_vpc" "name" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "test_vpc"
  }
}

resource "aws_subnet" "name" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "test_subnet"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = var.s3_bucket_name

}