resource "aws_eip" "my_eip" {
    domain = "vpc"

    tags = {
        Name = "eip-monitoring-eip"
    }

    provisioner "local-exec" {
        command = "echo ${self.public_ip} > ../../ip_public.txt"
    }
}