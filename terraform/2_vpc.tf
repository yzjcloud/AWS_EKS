# data "aws_vpc" "selected" {
#   id = "vpc-7ed47d03"
# }

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "eks_demo"
  }
}