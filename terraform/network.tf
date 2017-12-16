resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags {
    Name = "vpc"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
  tags {
    Name = "subnet_1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1b"
  tags {
    Name = "subnet_2"
  }
}

resource "aws_subnet" "subnet_3" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-central-1c"
  tags {
    Name = "subnet_3"
  }
}
