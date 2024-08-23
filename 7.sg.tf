resource "aws_security_group" "tf_assignment" {
  name        = "assignment"
  description = "assignment"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "assignment"
  }
  }
