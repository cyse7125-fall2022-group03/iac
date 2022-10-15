provider "aws" {
  region  = var.region
  profile = var.profile
}

module "aws-vpc" {
  source = "./modules/aws-vpc"
}

module "cluster-vpc" {
  source = "./modules/cluster-vpc"
  depends_on = [
    module.aws-vpc
  ]
}

module "vpc-peering" {
  source         = "./modules/vpc-peering"
  rds_vpc_id     = module.aws-vpc.rds_vpc_id
  cluster_vpc_id = module.cluster-vpc.cluster_vpc_id
  depends_on = [
    module.cluster-vpc
  ]
}

module "kops" {
  source = "./modules/kops"
  depends_on = [
    module.vpc-peering
  ]
}



