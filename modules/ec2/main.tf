resource "aws_instance" "monitoring-ec2" {
    ami               = "ami-0f021a2f2aadc4b9b"
    instance_type     = var.instance_type
    key_name          = var.ssh_key
    availability_zone = var.AZ
    vpc_security_group_ids = [ var.sg_id ]
    
    tags = {
        Name = "monitoring-ec2-${var.maintainer}"
    }

    root_block_device {
      delete_on_termination = true
    }
}