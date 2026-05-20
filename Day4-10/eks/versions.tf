# terraform {
#   required_version = "~> 1.15.1"

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 6.0.0"
#     }
#   }
# }

# provider "aws" {
#   region = "ap-south-1"
# }




terraform {
  required_version = "~> 1.15.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }

  backend "s3" {
    bucket         = "tfstate-dev-ap-south-1-5jpsol"
    key            = "bootcamp/terraform/eks/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
  }
}

provider "aws" {
  region = "ap-south-1"
}