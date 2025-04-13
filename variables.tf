variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "public_subnets" {
  description = "List of public subnets"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))

}

variable "private_subnets" {
  description = "List of private subnets"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "terraform-aws"
  }
}

variable "enable_nat_gateway" {
  description = "Enable or disable NAT Gateways"
  type        = bool
  default     = true
}

variable "internet_gateway_name" {
  description = "The name of the Internet Gateway"
  type        = string
}
variable "public_route_table_name" {
  description = "The name of the public route table"
  type        = string
}
variable "private_route_table_1_name" {
  description = "The name of the private route table 1"
  type        = string
}
variable "private_route_table_2_name" {
  description = "The name of the private route table 2"
  type        = string
}