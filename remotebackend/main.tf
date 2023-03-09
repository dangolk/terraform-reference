terraform {
  backend "remote" {
    organization = "testing-acloudguru"
    workspaces {
      name = "testing-acloudguru"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "vm" {
  ami           = "ami-05b5badc2f7ddd88d"
  subnet_id     = "subnet-0e83d057bb9e71f9d"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tf-node"
  }
}
