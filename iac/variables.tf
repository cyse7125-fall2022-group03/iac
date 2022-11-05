variable "region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS Profile"
  //default     = "root"
  default     = "ghactions"
}

variable "rds_vpc_cidr_block" {
  description = "The region in which to create the VPC network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_cidr_block" {
  description = "The region in which to create the VPC network"
  type        = string
  default     = "172.168.0.0/16"
}

variable "database_allocated_storage" {
  description = "RDS allocated storage"
  type        = number
  default     = 10
}

variable "database_engine" {
  description = "RDS engine"
  type        = string
  default     = "mysql"
}

variable "database_engine_version" {
  description = "RDS engine version"
  type        = string
  default     = "8.0.27"
}

variable "database_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t2.micro"
}

variable "database_name" {
  description = "Db name"
  type        = string
  default     = "todo"
}


variable "rds_private_subnet_cidr_blc_1"{
  description = "First private subnet"
  default = "10.0.1.0/24"
}

variable "rds_private_subnet_availabilityzone_1"{
  default = "us-east-1b"
}

variable "rds_private_subnet_cidr_blc_2"{
  description = "First private subnet"
  default = "10.0.2.0/24"
}

variable "rds_private_subnet_availabilityzone_2"{
  default = "us-east-1c"
}


variable "db_username" {
  description = "User name"
  type        = string
  default     = "username"
  //default     = "root"
}

variable "db_password" {
  description = "Password"
  type        = string
  //default     = "root12345"
  default     = "password"

}

