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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0223246728818f162"
  instance_type = "t2.micro"
  key_name = "simi"
  security_groups = ["web"]

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
