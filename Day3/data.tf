data "aws_vpc" "bootcamp_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }

  region = var.region
}