data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_1"
    Environment = var.environment
    "kubernetes.io/role/elb"          = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone       = data.aws_availability_zones.available.names[1]
  

  tags = {
    Name = "private_subnet_1"
    Environment = var.environment
    "kubernetes.io/role/elb"          = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_2"
    Environment = var.environment
    "kubernetes.io/role/elb"          = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"
  availability_zone       = data.aws_availability_zones.available.names[1]
  

  tags = {
    Name = "private_subnet_2"
    Environment = var.environment
    "kubernetes.io/role/elb"          = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}
