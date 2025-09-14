provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance" {
    ami = "ami-0b09ffb6d8b58ca91"
    instance_type = "t2.micro"
    key_name = "ansible-key.pem"
    security_groups = [launch-wizard-1]
    tags = {
        Name = "terraformserver"
    }
}
