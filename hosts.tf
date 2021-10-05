provider "aws" {
  region = "eu-west-3"
  access_key = "AKIASBWCNLMNAAZZUTEV"
  secret_key = "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"
}

resource "aws_instance" "srv1" {
  ami = "ami-072056ff9d3689e7b"
  instance_type = "t2.micro"
  availability_zone = "eu-west-3a"
  key_name = "my_ssh_key"

  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.srv1_nic.id
  }
  tags = {
     Name = "srv1"
  }

}
resource "aws_instance" "srv2" {
  ami = "ami-072056ff9d3689e7b"
  instance_type = "t2.micro"
  availability_zone = "eu-west-3a"
  key_name = "my_ssh_key"

  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.srv2_nic.id
  }
  tags = {
     Name = "srv2"
  }

}

resource "aws_instance" "srv3" {
  ami = "ami-072056ff9d3689e7b"
  instance_type = "t2.micro"
  availability_zone = "eu-west-3a"
  key_name = "my_ssh_key"

  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.srv3_nic.id
  }
  tags = {
     Name = "srv3"
  }

}

resource "aws_instance" "srv4" {
  ami = "ami-072056ff9d3689e7b"
  instance_type = "t2.micro"
  availability_zone = "eu-west-3a"
  key_name = "my_ssh_key"

  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.srv4_nic.id
  }
  tags = {
     Name = "srv4"
  }

}

resource "aws_instance" "srv5" {
  ami = "ami-072056ff9d3689e7b"
  instance_type = "t2.micro"
  availability_zone = "eu-west-3a"
  key_name = "my_ssh_key"

  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.srv5_nic.id
  }
  tags = {
     Name = "srv5"
  }

}
