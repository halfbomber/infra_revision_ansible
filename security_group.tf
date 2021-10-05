resource "aws_security_group" "lab_sg" {
  name        = "lab_sg"
  vpc_id      = aws_vpc.vpc_certif.id
  #
  # ingress = [
  #   {
  #     description      = "ssh"
  #     from_port        = 22
  #     to_port          = 22
  #     protocol         = "tcp"
  #     cidr_blocks      = ["0.0.0.0/0"]
  #   },
  #   {
  #     description      = "http"
  #     from_port        = 80
  #     to_port          = 80
  #     protocol         = "tcp"
  #     cidr_blocks      = ["0.0.0.0/0"]
  #   }
  # ]
  #
  # egress = [
  #   {
  #     from_port        = 0
  #     to_port          = 0
  #     protocol         = "-1"
  #     cidr_blocks      = ["0.0.0.0/0"]
  #     ipv6_cidr_blocks = ["::/0"]
  #   }
  # ]

  tags = {
    Name = "allow_lab_certif"
  }
}
# rules for private network between EC2
resource "aws_security_group_rule" "all_local_network" {
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "all"
  cidr_blocks       = [aws_vpc.vpc_certif.cidr_block]
  security_group_id = aws_security_group.lab_sg.id
}

# rule for internet source

resource "aws_security_group_rule" "ping_sg_rule" {
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.lab_sg.id
}

resource "aws_security_group_rule" "dns_sg_rule" {
  type              = "ingress"
  from_port         = 53
  to_port           = 53
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.lab_sg.id
}

resource "aws_security_group_rule" "ssh_sg_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.lab_sg.id
}

resource "aws_security_group_rule" "http_sg_rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.lab_sg.id
}

resource "aws_security_group_rule" "eg_allow_all__sg_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.lab_sg.id
}
