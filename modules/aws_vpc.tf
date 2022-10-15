

data "aws_availability_zones" "available"{
    state = "available"
}



//Database VPC


resource "aws_vpc" "rds_vpc" {

cidr_block = var.rds_vpc_cidr_block
enable_dns_support = true #gives you an internal domain name
enable_dns_hostnames = true #gives you an internal host name

}

resource "aws_internet_gateway" "rds_igw"{ 
    vpc_id = "${aws_vpc.rds_vpc.id}" 
    tags = { 
        Name = "rds_igw" 
        }
}

resource "aws_subnet" "rds_public_subnet" {
    vpc_id = "${aws_vpc.rds_vpc.id}"
    cidr_block = "${var.public_subnet_cidr_bloc}"
    map_public_ip_on_launch = true//it makes this a public subnet
    availability_zone = data.aws_availability_zones.available.names[0]
    tags= {
        Name = "rds-public-subnet"
    }
}

resource "aws_subnet" "rds_private_subnet" {
    vpc_id = "${aws_vpc.rds_vpc.id}"
    count = var.subnet_count.private
    cidr_block = "${var.private_subnet_cidr_bloc[count.index]}"
    availability_zone = data.aws_availability_zones.available.names[count.index]
    tags = {
        Name = "rds-private-subnet"
    }
}



resource "aws_route_table" "rds_public_rt" { 
    vpc_id = "${aws_vpc.rds_vpc.id}" 
    route {
            //associated subnet can reach everywhere 
            cidr_block = "0.0.0.0/0" //CRT uses this IGW to reach 
            gateway_id = "${aws_internet_gateway.rds_igw.id}" 
        } 

    tags = { 
            Name = "rds-public-rt" 
        } 
        
}

resource "aws_route_table_association" "public"{
    subnet_id = "${aws_subnet.rds_public_subnet.id}"
    route_table_id = "${aws_route_table.rds_public_rt.id}"
}


resource "aws_route_table" "rds_private_rt" {
    vpc_id = aws_vpc.rds_vpc.id
  
}

resource "aws_route_table_association" "private" {
    count = var.subnet_count.private
    route_table_id = aws_route_table.rds_private_rt.id
    subnet_id = aws_subnet.rds_private_subnet[count.index].id
  
}

resource "aws_security_group" "rds_db_web_sg" {

    name = "rds_db_web_sg"
    description = "Security Group for web servers"
    vpc_id = aws_vpc.rds_vpc.id

    ingress {
        description = "allow HTTP traffic"
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        description = "allow SSH traffic"
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        description = "allow all outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "rds_db_web_sg"
    }
  
}

resource "aws_security_group" "rds_db_sg" {
    name = "rds_db_sg"
    description = "Security Group for Database"
    vpc_id = aws_vpc.rds_vpc.id


    ingress {
        description = "Allow MySql traffic from the web page"
        from_port = "3306"
        to_port = "3306"
        protocol = "tcp"
        security_groups = [aws_security_group.rds_db_web_sg.id]
    }

    tags = {
      Name = "rds_db_sg"
    }
  
}

resource "aws_db_subnet_group" "rds_db_subnet_group" {
    name = "rds_db_subnet_group"
    description = "db subnet group for todo"

 
    subnet_ids = [for subnet in aws_subnet.rds_private_subnet : subnet.id]
  
}

resource "aws_db_instance" "todo_database" {

    allocated_storage = var.setting.database.allocated_storage
    engine = var.setting.database.engine
    engine_version = var.setting.database.engine_version
    instance_class = var.setting.database.instance_class
    db_name = var.setting.database.db_name
    username = var.db_username
    password = var.db_password

    db_subnet_group_name = aws_db_subnet_group.rds_db_subnet_group.id
    vpc_security_group_ids = [ aws_security_group.rds_db_sg.id ]

    skip_final_snapshot = true

  
}