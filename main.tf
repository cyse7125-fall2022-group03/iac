provider "aws" {
  region  = var.region
  profile = var.profile
}

module "kops" {
  source = "./modules/kops"
}

module "aws-vpc" {
  source = "./modules/aws-vpc"
  depends_on = [
    module.kops
  ]
}

# module "aws-vpc" {
#   source = "./modules/aws-vpc"
# }



module "vpc-peering" {
  source         = "./modules/vpc-peering"
  rds_vpc_id     = module.aws-vpc.rds_vpc_id
  cluster_vpc_id = module.kops.vpc_id
  depends_on = [
    module.aws-vpc
  ]
}





