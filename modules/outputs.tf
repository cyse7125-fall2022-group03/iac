output "aws_vpc_id" {
  value = aws_vpc.rds_vpc.id
}

output "cluster_vpc_id" {
  value = aws_vpc.kops_vpc.id
}

