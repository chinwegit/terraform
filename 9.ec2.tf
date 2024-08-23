module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "tf-assignment"

  instance_type          = "t2.micro"
  key_name               = "terraform_project"
  monitoring             = true
  vpc_security_group_ids = ["sg-0852862c60a12162b"]
  subnet_id              = "subnet-0d373d139bcc95d45"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}