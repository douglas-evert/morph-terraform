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
        Name = "bobby"
    }
}
