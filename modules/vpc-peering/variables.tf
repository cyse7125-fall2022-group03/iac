variable "profile" {
  description = "AWS Profile"
  default     = "root"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "rds_vpc_id" {
  description = "rds-vpc-id"
  type        = string
}

variable "cluster_vpc_id" {
  description = ""
  type        = string
}
