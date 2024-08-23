resource "aws_eip" "nat" {
instance = null
  tags = {
    Name = "tfassignment-nat"
  }
}

resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat.id
    subnet_id =     aws_subnet.public_ca_central_1a.id
  
  tags = {
    name ="tfassignment-nat"
  }
  depends_on = [aws_internet_gateway.igw ]
}