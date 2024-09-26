variable "cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type = bool 
  default = true
}
variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}

variable "common_tags" {
  type = map 
  default = {}
}
variable "vpc_tags" {
  type = map 
  default = {}
}
variable "igw_tags" {
  type = map 
  default = {}
}
variable "public_cidr_block" {
  validation {
    condition = length(var.public_cidr_block) == 2
    error_message = "please give 2 valid public subnets cidr"
  }
}
variable "public_subnet_tags" {
  type = map 
  default = {}
}
variable "private_cidr_block" {
  type = list 
  validation {
    condition = length(var.private_cidr_block) == 2
    error_message = "please give 2 valid private subnets cidr"
  }
}
variable "private_subnet_tags" {
  default = {}
}
variable "database_cidr_block" {
  type = list 
  validation {
    condition = length(var.database_cidr_block) == 2
    error_message = "please give 2 valid database subnets cidr"
  }
}
variable "database_subnet_tags" {
  type = map 
  default = {}
}
variable "nat_gateway_tags" {
  type = map 
  default = {}
}
variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}
variable "is_peering_required" {
  type = bool 
  default = false
}
variable "acceptor_vpc_id" {
  type = string
  default = ""
}
variable "vpc_peering_tags" {
  default = {}
}