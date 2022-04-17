terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
}

provider "aws" {
    profile = "default"
    region = "sa-east-1"
}

resource "tls_private_key" "this" {
    algorithm = "RSA"
}

resource "aws_instance" "myEc2Instance" {
    ami = "ami-00d10ca79f70a302a"
    instance_type = "t2.micro"

    tags = {
        Name = "PythonServerInstance"
    }
    connection {
        type     = "ssh"
        user     = "ec2-user"
        private_key = tls_private_key.this.private_key_pem
        host     = aws_instance.myEc2Instance.public_ip
        }
}



