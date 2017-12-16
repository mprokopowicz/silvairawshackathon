resource "aws_security_group" "sg-ecs" {
  name        = "${format("%s-%s", "ECSSecurityGroup", var.env)}"
  description = "Allow all outbound traffic"
  vpc_id      = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${format("%s-%s", "sg-ecs", var.env)}"
    Environment = "${var.env}"
  }
}
