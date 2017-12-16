resource "aws_vpc" "hackathon" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags {
    Name = "hackathon"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
  tags {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-1b"
  tags {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-1c"
  tags {
    Name = "public_subnet_3"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-west-1a"
  tags {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.5.0/24"
  availability_zone = "eu-west-1b"
  tags {
    Name = "private_subnet_2"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id = "${aws_vpc.hackathon.id}"
  cidr_block = "10.0.6.0/24"
  availability_zone = "eu-west-1c"
  tags {
    Name = "private_subnet_3"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${aws_vpc.hackathon.id}"
  tags {
    Name = "internet_gateway"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = "${aws_vpc.hackathon.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }
  tags {
    Name = "route_table"
  }
}

resource "aws_route_table_association" "route_table_association_1" {
  subnet_id = "${aws_subnet.public_subnet_1.id}"
  route_table_id = "${aws_route_table.route_table.id}"
}

resource "aws_route_table_association" "route_table_association_2" {
  subnet_id = "${aws_subnet.public_subnet_2.id}"
  route_table_id = "${aws_route_table.route_table.id}"
}

resource "aws_route_table_association" "route_table_association_3" {
  subnet_id = "${aws_subnet.public_subnet_3.id}"
  route_table_id = "${aws_route_table.route_table.id}"
}
