# iac - Infrastructure as Code

| Name                | NUID      | Email                          |
| ------------------- | --------- | ------------------------------ |
| Ketki Kule          | 001549838 | kule.k@northeastern.edu        |
| Sandeep Wagh        | 001839964 | wagh.sn@northeastern.edu       |
| Vignesh Gunasekaran | 001029530 | gunasekaran.v@northeastern.edu |

## Terraform Module

aws-vpc ~ create aws vpc with RDS network
cluster-vpc ~ create networking resources for the Kubernetes cluster
vpc-peering ~ create vpc peering between the 2 vpc networks

### Steps to run terraform

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
