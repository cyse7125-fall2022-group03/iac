

resource "aws_iam_user" "iam_kops" {
  name = var.username
}


resource "aws_iam_access_key" "kops_access_key" {
  user = aws_iam_user.iam_kops.name
}


resource "aws_iam_user_policy_attachment" "kops-policy-AmazonRoute53FullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazon53FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-AmazonEC2FullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazonEC2FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-IAMFullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.IAMFullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-AmazonSQSFullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazonSQSFullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-AmazonS3FullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazonS3FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-amazonVPCFullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazonVPCFullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kops-policy-amazonEventBridgeFullAccess" {
  user       = aws_iam_user.iam_kops.name
  policy_arn = aws_iam_policy.amazonEventBridgeFullAccess.arn
}


resource "aws_s3_bucket" "kops_bucket" {
  bucket = var.s3_bucket_name
  
  tags = {
    Name        = "kOps Bucket"
    Environment = "root"
  }
}

resource "aws_s3_bucket_acl" "kops_bucket_acl" {
  bucket = aws_s3_bucket.kops_bucket.id
  acl    = "private"
}

# data "aws_availability_zones" "available"{
#     state = "available"
# }

//KOps VPC

resource "aws_vpc" "kops_vpc" {

cidr_block = var.vpc_cidr_block
enable_dns_support = true #gives you an internal domain name
enable_dns_hostnames = true #gives you an internal host name

}

resource "aws_internet_gateway" "kops_igw"{ 
    vpc_id = "${aws_vpc.kops_vpc.id}" 
    tags = { 
        Name = "kops_igw" 
        }
}

# resource "aws_subnet" "kops_public_subnet" {
#     vpc_id = "${aws_vpc.kops_vpc.id}"
#     cidr_block = "${var.public_subnet_cidr_bloc}"
#     map_public_ip_on_launch = true//it makes this a public subnet
#     availability_zone = data.aws_availability_zones.available.names[0]
#     tags= {
#         Name = "kops-public-subnet"
#     }
# }

# resource "aws_subnet" "kops_private_subnet" {
#     vpc_id = "${aws_vpc.kops_vpc.id}"
#     count = var.subnet_count.private
#     cidr_block = "${var.private_subnet_cidr_bloc[count.index]}"
#     availability_zone = data.aws_availability_zones.available.names[count.index]
#     tags = {
#         Name = "kops-private-subnet"
#     }
# }



# resource "aws_route_table" "kops_public_rt" { 
#     vpc_id = "${aws_vpc.kops_vpc.id}" 
#     route {
#             //associated subnet can reach everywhere 
#             cidr_block = "0.0.0.0/0" //CRT uses this IGW to reach 
#             gateway_id = "${aws_internet_gateway.kops_igw.id}" 
#         } 

#     tags = { 
#             Name = "kops-public-rt" 
#         } 
        
# }

# resource "aws_route_table_association" "kops_public"{
#     subnet_id = "${aws_subnet.kops_public_subnet.id}"
#     route_table_id = "${aws_route_table.kops_public_rt.id}"
# }


# resource "aws_route_table" "kops_private_rt" {
#     vpc_id = aws_vpc.kops_vpc.id
  
# }

# resource "aws_route_table_association" "kops_private" {
#     count = var.subnet_count.private
#     route_table_id = aws_route_table.kops_private_rt.id
#     subnet_id = aws_subnet.kops_private_subnet[count.index].id
  
# }

resource "null_resource" "enable_service_usage_api" {
  provisioner "local-exec" {
    command = " aws configure set aws_access_key_id ${aws_iam_access_key.kops_access_key.id} --profile kops"
  }
  provisioner "local-exec" {
    command = " aws configure set aws_secret_access_key ${aws_iam_access_key.kops_access_key.secret} --profile kops"
  }

  provisioner "local-exec" {
    command = " aws configure set region us-east-1 --profile kops"
  }
  provisioner "local-exec" {
    command = "export AWS_PROFILE=kops"
  }

#   provisioner "local-exec" {
#     command = "kops create cluster --name=${var.domain_name} --cloud=aws --master-zones=${var.zones} --zones=${var.zones} --node-count=3 --topology=private --networking=calico --node-size=${var.node_size} --kubernetes-version=1.22.15 --master-size=${var.master_size} --master-image=ami-08c40ec9ead489470 --node-image=ami-08c40ec9ead489470 --ssh-public-key=${var.ssh_public_key_path} --bastion=true --state=s3://${s3_bucket_name} --vpc=${aws_vpc.kops_vpc.id} --out=. --target=terraform --yes"
#   }
#   provisioner "local-exec" {
#     command = "kops update cluster ${var.domain_name} --state=s3://${s3_bucket_name} --yes"
#   }

#   provisioner "local-exec" {
#     command = "kops validate cluster --state=s3://${s3_bucket_name} --wait 5m  "
#   }

}
