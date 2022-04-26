resource "aws_instance" "myec2_instance" {
  ami = "ami-00d10ca79f70a302a"
  instance_type = "t2.micro"
  key_name = "terraform-key"

  tags = {
    Name = "PythonInstance"
  }
}

