provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "AWSEC2Instance" {
    ami = "ami-0b09ffb6d8b58ca91"
    instance_type = "t2.micro"
    key_name = "ansible-key"
    security_groups = ["eksctl-demo-cluster-cluster-ClusterSharedNodeSecurityGroup-iAMQtf2P9brC"]
    tags = {
        Name = "terraformserver"
    }
}
