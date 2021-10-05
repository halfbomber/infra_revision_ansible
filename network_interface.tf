resource "aws_network_interface" "srv1_nic" {
  subnet_id       = aws_subnet.certif_subnet.id
  private_ips     = ["10.100.1.10"]
  security_groups = [aws_security_group.lab_sg.id]

  # attachment {
  #   instance     = aws_instance.test.id
  #   device_index = 1
  # }
}

resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = aws_network_interface.srv1_nic.id
  associate_with_private_ip = "10.100.1.10"
  depends_on = [aws_internet_gateway.igw]
}

####################################################
resource "aws_network_interface" "srv2_nic" {
  subnet_id       = aws_subnet.certif_subnet.id
  private_ips     = ["10.100.1.12"]
  security_groups = [aws_security_group.lab_sg.id]

  # attachment {
  #   instance     = aws_instance.test.id
  #   device_index = 1
  # }
}

resource "aws_eip" "two" {
  vpc                       = true
  network_interface         = aws_network_interface.srv2_nic.id
  associate_with_private_ip = "10.100.1.12"
  depends_on = [aws_internet_gateway.igw]
}
################################################################
resource "aws_network_interface" "srv3_nic" {
  subnet_id       = aws_subnet.certif_subnet.id
  private_ips     = ["10.100.1.13"]
  security_groups = [aws_security_group.lab_sg.id]

  # attachment {
  #   instance     = aws_instance.test.id
  #   device_index = 1
  # }
}

resource "aws_eip" "three" {
  vpc                       = true
  network_interface         = aws_network_interface.srv3_nic.id
  associate_with_private_ip = "10.100.1.13"
  depends_on = [aws_internet_gateway.igw]
}
################################################################

resource "aws_network_interface" "srv4_nic" {
  subnet_id       = aws_subnet.certif_subnet.id
  private_ips     = ["10.100.1.14"]
  security_groups = [aws_security_group.lab_sg.id]

  # attachment {
  #   instance     = aws_instance.test.id
  #   device_index = 1
  # }
}

resource "aws_eip" "four" {
  vpc                       = true
  network_interface         = aws_network_interface.srv4_nic.id
  associate_with_private_ip = "10.100.1.14"
  depends_on = [aws_internet_gateway.igw]
}
################################################################

resource "aws_network_interface" "srv5_nic" {
  subnet_id       = aws_subnet.certif_subnet.id
  private_ips     = ["10.100.1.15"]
  security_groups = [aws_security_group.lab_sg.id]

  # attachment {
  #   instance     = aws_instance.test.id
  #   device_index = 1
  # }
}

resource "aws_eip" "five" {
  vpc                       = true
  network_interface         = aws_network_interface.srv5_nic.id
  associate_with_private_ip = "10.100.1.15"
  depends_on = [aws_internet_gateway.igw]
}
