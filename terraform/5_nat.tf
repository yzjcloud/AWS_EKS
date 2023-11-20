resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "eks_demo_eip"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "eks_demo_nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
