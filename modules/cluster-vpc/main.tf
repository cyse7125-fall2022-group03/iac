

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

//KOps VPC

resource "aws_vpc" "kops_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true #gives you an internal domain name
  enable_dns_hostnames = true #gives you an internal host name
  tags = {
    Name = "kops_vpc"
  }
}

resource "aws_internet_gateway" "kops_igw" {
  vpc_id = aws_vpc.kops_vpc.id
  tags = {
    Name = "kops_igw"
  }
}


resource "null_resource" "enable_service_usage_api" {
  provisioner "local-exec" {
    command = "export KOPS_STATE_STORE=s3://assignment4-csye7125-team3/"
  }

  provisioner "local-exec" {
    command = "export MASTER_SIZE=t3.small"
  }

  provisioner "local-exec" {
    command = "export NODE_SIZE=t3.small"
  }

  provisioner "local-exec" {
    command = "export ZONES=us-east-1a,us-east-1b,us-east-1c"
  }

  provisioner "local-exec" {
    command = "export NAME=ketkikule.me"
  }

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
   provisioner "local-exec" {
    command = "kops create cluster --name=${var.domain_name} --cloud=aws --master-zones=${var.zones} --zones=${var.zones} --node-count=3 --topology=private --networking=calico --node-size=${var.node_size} --kubernetes-version=1.22.15 --master-size=${var.master_size} --master-image=ami-08c40ec9ead489470 --node-image=ami-08c40ec9ead489470 --ssh-public-key=${var.ssh_public_key_path} --bastion=true --state=s3://${var.s3_bucket_name} --vpc=${aws_vpc.kops_vpc.id} --out=./modules/kops --target=terraform --yes"
  }

}


