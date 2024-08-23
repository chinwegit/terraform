#create internet getway to attach to the vpc 
resource "aws_internet_gateway" "igw" {
  
  vpc_id = aws_vpc.main.id

  tags = {

    Name ="tfassignment-igw"
  }
}