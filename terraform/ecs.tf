resource "aws_ecs_cluster" "ecs-cluster" {
  name = "${var.env}"
}
