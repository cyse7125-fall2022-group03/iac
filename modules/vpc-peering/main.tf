# provider "aws" {
#   profile = var.profile
#   region  = var.region
# }

//SRC --> Acceptor
data "aws_vpc" "rds_vpc" {
  id = var.rds_vpc_id
}

//dST --> Requestor
data "aws_vpc" "cluster_vpc" {
  id = var.cluster_vpc_id
}

locals {
  accepter_account_id = element(split(":", data.aws_vpc.rds_vpc.arn), 4)
}

resource "aws_vpc_peering_connection" "requestor" {
  vpc_id        = data.aws_vpc.cluster_vpc.id
  peer_vpc_id   = data.aws_vpc.rds_vpc.id
  peer_owner_id = local.accepter_account_id
  auto_accept   = true
  tags = {
    Name = "requestor"
  }
}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  vpc_peering_connection_id = aws_vpc_peering_connection.requestor.id
  auto_accept               = true

  tags = {
    Name = "Accepter"
  }
}

data "aws_route_tables" "accepter" {
  vpc_id = data.aws_vpc.rds_vpc.id
}

data "aws_route_tables" "requester" {
  vpc_id = data.aws_vpc.cluster_vpc.id
}

resource "aws_route" "requestor_route" {
  //count                     = length(data.aws_route_tables.requester.ids)
  route_table_id            = tolist(data.aws_route_tables.requester.ids)[0]
  destination_cidr_block    = data.aws_vpc.rds_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.requestor.id
}

resource "aws_route" "accepter_route" {
  // count                     = length(data.aws_route_tables.accepter.ids)
  route_table_id            = tolist(data.aws_route_tables.accepter.ids)[0]
  destination_cidr_block    = data.aws_vpc.cluster_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.requestor.id
}


