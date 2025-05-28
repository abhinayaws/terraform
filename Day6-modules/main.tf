resource "aws_vpc" "vpc01" {
    cidr_block = "10.0.0.0/16" 
}
resource "aws_internet_gateway" "IG1" {
    vpc_id = aws_vpc.vpc01.id
  
}
resource "aws_subnet" "public" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.vpc01.id   
}
resource "aws_route_table" "publicRT" {
    vpc_id = aws_vpc.vpc01.id
   route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.IG1.id 
   }
}
resource "aws_route_table_association" "name" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.publicRT
}
resource "aws_security_group" "SG1" {
    ingress = {
        port = 
    }
  
}