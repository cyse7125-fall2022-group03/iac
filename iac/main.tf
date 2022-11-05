provider "aws" {
  region  = var.region
  profile = var.profile
}

module "kops" {
  source = "./modules/kops"
}

module "aws-vpc" {
  source                                = "./modules/aws-vpc"
  rds_vpc_cidr_block                    = var.rds_vpc_cidr_block
  vpc_cidr_block                        = var.vpc_cidr_block
  database_allocated_storage            = var.database_allocated_storage
  database_engine                       = var.database_engine
  database_engine_version               = var.database_engine_version
  database_instance_class               = var.database_instance_class
  database_name                         = var.database_name
  rds_private_subnet_cidr_blc_1         = var.rds_private_subnet_cidr_blc_1
  rds_private_subnet_availabilityzone_1 = var.rds_private_subnet_availabilityzone_1
  rds_private_subnet_cidr_blc_2         = var.rds_private_subnet_cidr_blc_2
  db_username                           = var.db_username
  db_password                           = var.db_password
  depends_on = [
    module.kops
  ]
}

module "vpc-peering" {
  source         = "./modules/vpc-peering"
  rds_vpc_id     = module.aws-vpc.rds_vpc_id
  cluster_vpc_id = module.kops.vpc_id
  depends_on = [
    module.aws-vpc
  ]
}





