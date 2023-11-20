# data "aws_internet_gateway" "example" {
#   vpc_id = data.aws_vpc.selected # Use the VPC ID from the first VPC in the list
# }
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "eks_demo_igw"
  }
}