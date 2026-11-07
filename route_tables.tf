resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "terraform-test-public-rt"
  }
}


resource "aws_route_table_association" "public-subnet-1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public-subnet-2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_rt.id
}


resource "aws_route_table" "private_rt"{
    vpc_id = aws_vpc.main.id

   tags = {
    Name = "terraform-test-private-rt"
  }
}

resource "aws_route_table_association" "private_subnet_1"{
    subnet_id = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.private_rt.id

}  

resource "aws_route_table_association" "private_subnet_2"{
    subnet_id = aws_subnet.private_subnet_2.id
    route_table_id = aws_route_table.private_rt.id
}