resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.main.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
}

resource "aws_subnet" "subnet" {
  cidr_block = "10.0.0.0/16"
  vpc_id     = aws_vpc.main.id
}

resource "aws_network_interface" "network" {
  subnet_id = aws_subnet.subnet.id
}

resource "aws_vpc" "again" {
  cidr_block = "10.0.1.0/24"
}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.again.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}


resource "aws_route_table" "new" {
  vpc_id = aws_vpc.again.id

  route {
    cidr_block           = aws_vpc.again.cidr_block
    network_interface_id = aws_network_interface.network.id
  }
}
