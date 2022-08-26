resource "aws_internet_gateway" "internet-gateway-mobiledevops" {
  vpc_id = aws_vpc.vpc-mobiledevops.id

  tags = {
    Name  = "internet-gateway-mobiledevops"
    Owner = "MobileDevOps"
  }
}

resource "aws_route_table" "crt-mobiledevops" {
  vpc_id = aws_vpc.vpc-mobiledevops.id

  route {
    //associated subnet can reach everywhere
    cidr_block = "0.0.0.0/0"
    //CRT uses this IGW to reach internet
    gateway_id = aws_internet_gateway.internet-gateway-mobiledevops.id
  }
  
  tags = {
    Name  = "prod-public-crt"
    Owner = "MobileDevOps"
  }
}

resource "aws_route_table_association" "crt-subnet-mobiledevops-sg-1a-crt-mobiledevops" {
  subnet_id      = aws_subnet.subnet-mobiledevops-sg-1a.id
  route_table_id = aws_route_table.crt-mobiledevops.id
}

resource "aws_security_group" "sec-group-mobiledevops-jenkins" {
  name        = "Jenkins Server Security Group"
  description = "Restrictions for Jenkins Server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  depends_on = [aws_vpc.vpc-mobiledevops]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.vpc-mobiledevops.id

  tags = {
    Name  = "sec-group-mobiledevops-jenkins"
    Owner = "MobileDevOps"
  }
}
