data "aws_availability_zones" "available" {
  state = "available"
}


//Database VPC
resource "aws_vpc" "rds_vpc" {
  cidr_block           = var.rds_vpc_cidr_block
  enable_dns_support   = true #gives you an internal domain name
  enable_dns_hostnames = true #gives you an internal host name
  tags = {
    Name = "rds_vpc"
  }
}

resource "aws_internet_gateway" "rds_igw" {
  vpc_id = aws_vpc.rds_vpc.id
  tags = {
    Name = "rds_igw"
  }
}

#Private Subnet 1 
resource "aws_subnet" "rds_private_subnet_1" {
  vpc_id            = aws_vpc.rds_vpc.id
  cidr_block        = var.rds_private_subnet_cidr_blc_1
  availability_zone = var.rds_private_subnet_availabilityzone_1
  tags = {
    Name = "rds-private-subnet-1"
  }
}

#Private Subnet 2
resource "aws_subnet" "rds_private_subnet_2" {
  vpc_id            = aws_vpc.rds_vpc.id
  cidr_block        = var.rds_private_subnet_cidr_blc_2
  availability_zone = var.rds_private_subnet_availabilityzone_2
  tags = {
    Name = "rds-private-subnet-2"
  }
}

#Route table
resource "aws_route_table" "rds_private_rt" {
  vpc_id = aws_vpc.rds_vpc.id

}

#Route table association for private subnet 1
resource "aws_route_table_association" "private_1" {
  route_table_id = aws_route_table.rds_private_rt.id
  subnet_id      = aws_subnet.rds_private_subnet_1.id
}

#Route table association for private subnet 2
resource "aws_route_table_association" "private_2" {
  route_table_id = aws_route_table.rds_private_rt.id
  subnet_id      = aws_subnet.rds_private_subnet_2.id


}

#Security groups
resource "aws_security_group" "rds_db_web_sg" {
  name        = "rds_db_web_sg"
  description = "Security Group for web servers"
  vpc_id      = aws_vpc.rds_vpc.id
  ingress {
    description = "allow HTTP traffic"
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow SSH traffic"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "rds_db_web_sg"
  }

}

resource "aws_security_group" "rds_db_sg" {
  name        = "rds_db_sg"
  description = "Security Group for Database"
  vpc_id      = aws_vpc.rds_vpc.id


  ingress {
    description     = "Allow MySql traffic from the web page"
    from_port       = "3306"
    to_port         = "3306"
    protocol        = "tcp"
    security_groups = [aws_security_group.rds_db_web_sg.id]
  }

   ingress {
    description     = "Allow MySql traffic from the web page"
    from_port       = "3306"
    to_port         = "3306"
    protocol        = "tcp"
    cidr_blocks = [ var.vpc_cidr_block]
  }

  tags = {
    Name = "rds_db_sg"
  }

}

#subnets appended
resource "aws_db_subnet_group" "rds_db_subnet_group" {
  name        = "rds_db_subnet_group"
  description = "db subnet group for todo"
  subnet_ids = [aws_subnet.rds_private_subnet_1.id,aws_subnet.rds_private_subnet_2.id ]

}

#db resource
resource "aws_db_instance" "todo_database" {

  allocated_storage = var.database_allocated_storage
  engine            = var.database_engine
  engine_version    = var.database_engine_version
  instance_class    = var.database_instance_class
  db_name           = var.database_name
  username          = var.db_username
  password          = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.rds_db_subnet_group.id
  vpc_security_group_ids = [aws_security_group.rds_db_sg.id]
  skip_final_snapshot = true
}
