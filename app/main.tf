provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-fiderana19"
    region = "us-east-1"
  }
}

module "sg" {
  source = "../modules/sg"
}

module "ec2" {
  source         = "../modules/ec2"
  public_ip = module.eip.output_eip
  sg_id  = module.sg.output_sg_id
  instance_type = var.instance_type
  AZ                = var.AZ
}

module "eip" {
  source      = "../modules/eip"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = module.ec2.output_ec2_id
  allocation_id = module.eip.output_eip_id
}
