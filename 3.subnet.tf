# Declare the subnets
resource "aws_subnet" "private_ca_central_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ca-central-1a"

  tags = {
    Name = "private_ca_central_1a"
  }
}

resource "aws_subnet" "private_ca_central_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ca-central-1b"

  tags = {
    Name = "private_ca_central_1b"
  }
}

resource "aws_subnet" "public_ca_central_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ca-central-1b"

  tags = {
    Name = "public_ca_central_1b"
  }
}
# Declare the public subnet in ca-central-1a
resource "aws_subnet" "public_ca_central_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.5.0/24"  # Adjust the CIDR block as needed
  availability_zone = "ca-central-1a"

  tags = {
    Name = "public_ca_central_1a"
  }
}