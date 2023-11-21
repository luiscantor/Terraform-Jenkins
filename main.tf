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
  region  = "us-east-2"
}

resource "aws_instance" "example_server" {
  ami           = "ami-089c26792dcb1fbd4"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2Example"
  }
}
