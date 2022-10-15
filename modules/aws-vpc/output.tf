output "rds_vpc_id" {
  value = aws_vpc.rds_vpc.id
  description = "VPC id of RDS"
}