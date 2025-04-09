variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "ops-vpc"
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "public_subnets" {
  description = "List of public subnets"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
  default = [
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
}

variable "private_subnets" {
  description = "List of private subnets"
  type = list(object({
    cidr_block        = string
    availability_zone = string
    name              = string
  }))
  default = [
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
}
# variable "public_subnet_cidrs" {
#   description = "CIDR blocks for public subnets"
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "private_subnet_cidrs" {
#   description = "CIDR blocks for private subnets"
#   type        = list(string)
#   default     = ["10.0.3.0/24", "10.0.4.0/24"]
# }

# variable "availability_zones" {
#   description = "List of availability zones"
#   type        = list(string)
#   default     = ["us-east-1a", "us-east-1b"]
# }

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "terraform-aws"
  }
}

variable "enable_nat_gateway" {
  description = "Enable or disable NAT Gateways"
  type        = bool
  default     = true
}