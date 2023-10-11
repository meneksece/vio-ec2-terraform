terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ec2" {
  ami                    = "ami-088e71edb8795252f"
  instance_type          = "t2.micro"
  availability_zone      = "eu-central-1a"
  key_name               = "ect-key"
  vpc_security_group_ids = ["sg-08be11322872e4328"]
  tags = {
    Name = "ec2-ect-instance"
  }

}