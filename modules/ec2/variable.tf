variable "maintainer" {
  type = string
  default = "fiderana19"
}

variable "instance_type" {
  type = string
}

variable "AZ" {
  type = string
}

variable "ssh_key" {
  type = string
  default = "devops"
}

variable "sg_name" {
  type = string
  default = "NULL"
}

variable "sg_id" {
  type        = string
}

variable "name" {
  type = string
  default = "NULL"
}

variable "public_ip" {
  type = string
  default = "NULL"
}

variable "user" {
  type = string
  default = "ec2-user"
}