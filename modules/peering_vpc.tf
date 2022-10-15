provider "aws" {
  profile = "${var.owner_profile}"
  region  = "${var.region}"
}

provider "aws" {
  alias = "accepter"
  region  = "${var.region}"
  profile = "${var.accepter_profile}"
}

data "aws_vpc" "rds_vpc" {
    provider = aws.accepter
    id = aws_vpc.rds_vpc.id
}

locals {
  accepter_account_id = "${element(split(":", data.aws_vpc.rds_vpc.arn), 4)}"
}

resource "aws_vpc_peering_connection" "owner" {
  vpc_id = aws_vpc.kops_vpc.id
  peer_vpc_id   = "${data.aws_vpc.rds_vpc.id}"
  peer_owner_id = "${local.accepter_account_id}"  

  tags =  {
    Name = "peer_to_${var.accepter_profile}"
  }
}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  provider                  = aws.accepter
  vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
  auto_accept               = true

  tags =  {
    Name = "peer_to_${var.owner_profile}"
  }
}

data "aws_vpc" "owner" {
    id = aws_vpc.kops_vpc.id
}


data "aws_route_tables" "accepter" {
  provider = aws.accepter
  vpc_id = "${data.aws_vpc.rds_vpc.id}"
}

data "aws_route_tables" "owner" {
  vpc_id = aws_vpc.kops_vpc.id
}


resource "aws_route" "owner" {
  route_table_id            = "${data.aws_route_tables.owner.id}"
  destination_cidr_block    = "${data.aws_vpc.rds_vpc.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
}   

resource "aws_route" "accepter" {
  provider = aws.accepter
  route_table_id            = "${data.aws_route_tables.accepter.id}"
  destination_cidr_block    = "${data.aws_vpc.owner.cidr_block}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
}