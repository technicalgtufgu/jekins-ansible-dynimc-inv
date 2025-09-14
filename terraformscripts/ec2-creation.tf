provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance" {
    ami = "ami-0b09ffb6d8b58ca91"
    instance_type = "t2.micro"
    key_name = "ansible-key"
    vpc_security_group_ids = ["sg-0d90927112521762b"]
    subnet_id = "subnet-0d9d0759549596317" 
    tags = {
        Name = "terraformserver"
    }
}
