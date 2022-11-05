# iac - Infrastructure as Code

| Name                | NUID      | Email                          |
| ------------------- | --------- | ------------------------------ |
| Ketki Kule          | 001549838 | kule.k@northeastern.edu        |
| Sandeep Wagh        | 001839964 | wagh.sn@northeastern.edu       |
| Vignesh Gunasekaran | 001029530 | gunasekaran.v@northeastern.edu |

## Terraform Folders & Modules

#### iac 
Creates aws vpc with RDS infra and contains the kubernetes.tf which is has specification for kops cluster.
Does VPC peering between the 2 networks

#### kopsCluster
Specification for kops cluster and creates the kubernetes.tf file 

## Steps to run terraform

### Customized commands
##### For kops cluster 

apply:

```
terraform apply -var="profile=profile" -var="s3_bucket_name=bucketname" -var="master_size=t3.small" -var="node_size=t3.small" -var="zones=us-east-1a,us-east-1b,us-east-1c" -var="domain_name=domainname" -var="ssh_public_key_path=PathToPublicKey" -var="ami-image-id=ami-08c40ec9ead489470"
```
destroy:

```
terraform destroy -var="profile=profile" -var="s3_bucket_name=bucketname"
```

##### For RDS cluster 

apply:

```
terraform apply -var='region=us-east-1' -var='profile=profile' -var="rds_vpc_cidr_block=10.0.0.0/16" -var="vpc_cidr_block=172.168.0.0/16" -var='database_name=dbname' -var='rds_private_subnet_cidr_blc_1=10.0.1.0/24' -var='rds_private_subnet_cidr_blc_2=10.0.2.0/24' -var='db_username=username' -var='db_password=password'
```

destroy:
```
terraform destroy -var='region=us-east-1' -var='profile=profile' -var='setting.database.db_name=todo' -var='db_username=username' -var='db_password=password'
```

#### Generic commands 
Run the following command to run initialize terraform files

```
terraform init
```

Run the following command to verify the terraform plan

```
terraform plan
```

Run the following command to run the terraform file for creating resources

```
terraform apply
```

