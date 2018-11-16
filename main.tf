provider "aws" {
  region     = "us-east-1"
  access_key = "<enter access key>"
  secret_key = "<enter secret_key >"
}


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "m1.small"

  tags {
    Name = "HelloWorld"
  }
}
