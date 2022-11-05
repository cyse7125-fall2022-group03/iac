variable "region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The region in which to create the VPC network"
  type        = string
  default     = "172.168.0.0/16"
}

//for cluster vpc variable 
variable "username" {
  type        = string
  default     = "kops"
  description = "IAM username for kOps"
}

variable "profile" {
  type = string
  default     = "root"
  //default     = "ghactions"
  description = "Git profile to be used for running the script"
}



variable "s3_bucket_name" {
  type = string
  //default     = "sandeepwagh.me"
  //default     = "ketkikule.me"
  default     = "shubhu"
  description = "Name of the s3 bucket to be created for kOps"
}

variable "master_size" {
  type        = string
  default     = "t3.small"
  description = "Name of the master_size to be created for kOps"
}

variable "node_size" {
  type        = string
  default     = "t3.small"
  description = "Name of the node_size to be created for kOps"
}

variable "zones" {
  type        = string
  default     = "us-east-1a,us-east-1b,us-east-1c"
  description = "Name of the zones to be created for kOps"
}

variable "domain_name" {
  type = string
  //default     = "aws.sandeepwagh.me"
  default     = "domainname"
  description = "Name of the kops cluster to be created for kOps"
}

variable "ssh_public_key_path" {
  type = string
  //default     = "/Users/sandy/.ssh/kops-key.pub"
  //default     = "/home/roadrunner/.ssh/kops-key.pub"
  default     = "path"
  description = "local machine path to ssh key "
}

variable "ami-image-id" {
  type = string
  default     = "ami-08c40ec9ead489470"
  description = "ami image to be used"
}



