resource "aws_subnet" "public" {
  count = length(var.subnets["public"].subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = element(length(var.subnets["public"].subnet_cidr), count.index )
  availability_zone = element(var.AZ, count.index)
}

resource "aws_subnet" "apps" {
  count = length(var.subnets["apps"].subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = element(length(var.subnets["apps"].subnet_cidr), count.index )
  availability_zone = element(var.AZ, count.index)
}

resource "aws_subnet" "db" {
  count = length(var.subnets["db"].subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = element(length(var.subnets["db"].subnet_cidr), count.index )
  availability_zone = element(var.AZ, count.index)
}