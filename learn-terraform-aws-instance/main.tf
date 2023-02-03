# Access key: AKIAVFSA3QIOGMS27EX2
# Secret access key: 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
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
