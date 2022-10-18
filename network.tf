resource "aws_vpc" "oreg-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "oreg-vpc"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "subnet2"
  }
  depends_on = [
    aws_subnet.subnet1
  ]
}
resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "subnet3"
  }
  depends_on = [
    aws_subnet.subnet2
  ]
}
resource "aws_subnet" "subnet4" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "subnet4"
  }
  depends_on = [
    aws_subnet.subnet3
  ]
}
resource "aws_subnet" "subnet5" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.5.0/24"

  tags = {
    Name = "subnet5"
  }
  depends_on = [
    aws_subnet.subnet4
  ]
}
resource "aws_subnet" "subnet6" {
  vpc_id     = aws_vpc.oreg-vpc.id
  cidr_block = "10.0.6.0/24"

  tags = {
    Name = "subnet6"
  }
  depends_on = [
    aws_subnet.subnet5
  ]
}

