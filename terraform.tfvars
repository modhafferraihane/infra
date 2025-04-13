vpc_name                   = "ops-vpc"
vpc_cidr                   = "10.0.0.0/16"
internet_gateway_name      = "main-igw"
public_route_table_name    = "public-route-table"
private_route_table_1_name = "private-route-table-1"
private_route_table_2_name = "private-route-table-2"
public_subnets = [
  {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    name              = "public-subnet-1"
  },
  {
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    name              = "public-subnet-2"
  }
]

private_subnets = [
  {
    cidr_block        = "10.0.3.0/24"
    availability_zone = "us-east-1a"
    name              = "private-subnet-1"
  },
  {
    cidr_block        = "10.0.4.0/24"
    availability_zone = "us-east-1b"
    name              = "private-subnet-2"
  }
]

