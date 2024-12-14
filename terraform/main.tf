# backend
terraform {
  backend "s3" {
    bucket = "cicd-bucket-yutarooo216"
    key = "test/resorces"
    region = "ap-northeast-1"
    encrypt = true
  }
}

# VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "githubactions-vpc"
  }
}
