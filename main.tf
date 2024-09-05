resource "aws_instance" "myVM" {
    ami = "ami-0490fddec0cbeb88b"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-aca77dc1"]
	key_name = "Terraform Code"
    tags = {
        Name = var.hostname
    }
}

resource "aws_instance" "myVM1" {
    ami = "ami-0490fddec0cbeb88b"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-aca77dc1"]
	key_name = "Terraform Code"
    tags = {
        Name = "aNewSystem"
    }
}

provider "aws" {
	region = "us-east-2"
	access_key = var.access_key 
	secret_key = var.secret_key
}
          
variable "hostname" {
          type = string
          default = " "
          description = "hostname and app name"
}

variable "access_key" {
	type = string
	default = " " 
	description = "aws access key"
}

variable "secret_key" {
	type = string
	default = " " 
	description = "aws secret key"
}
