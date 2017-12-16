resource "aws_key_pair" "hackathon-master" {
  key_name   = "hackathon-master"
  public_key = "${var.hackathon-master-public-key}"
}