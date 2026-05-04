provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-fiderana19"
    key = "fiderana19-dev.tfstate"
      region = "us-east-1"
  }
}