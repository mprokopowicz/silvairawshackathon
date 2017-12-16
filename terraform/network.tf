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
