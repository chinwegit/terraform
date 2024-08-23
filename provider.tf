# terraform {
#   required_version = ">=1.0"

# #   backend "local" {
# #     path = "dev/vpc/terraform.tfstate"
# #   }

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       # version = "~> 5.36.0"
#       version = "~> 4.62"
#     }
#   }
# }
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.0"
    }
  }
}

provider "aws" {
  region = "ca-central-1"
}