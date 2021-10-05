resource "aws_vpc" "vpc_certif" {
  cidr_block = "10.100.0.0/16"
  tags = {
    Name = "vpc_cerfif"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_certif.id

  tags = {
    Name = "IGW"
  }
}

resource "aws_route_table" "certif_rt" {
  vpc_id = aws_vpc.vpc_certif.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
    }

  route {
      ipv6_cidr_block        = "::/0"
      gateway_id = aws_internet_gateway.igw.id
    }

  tags = {
    Name = "certif_rt"
  }
}

resource "aws_subnet" "certif_subnet" {
  vpc_id =   aws_vpc.vpc_certif.id
  cidr_block = "10.100.1.0/24"
  availability_zone ="eu-west-3a"
  tags = {
    Name = "certif subnet"
  }
}

resource "aws_route_table_association" "rtassoc" {
  subnet_id = aws_subnet.certif_subnet.id
  route_table_id = aws_route_table.certif_rt.id
}
