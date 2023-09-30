resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet1-cidr
  availability_zone       = var.subnet1-az
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet2-cidr
  availability_zone       = var.subnet2-az
  map_public_ip_on_launch = true 
}