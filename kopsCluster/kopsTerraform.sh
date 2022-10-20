#! /bin/bash
export KOPS_STATE_STORE="s3://sandeepwagh.me/" 
export MASTER_SIZE="t3.small"
export NODE_SIZE="t3.small"
export ZONES="us-east-1a,us-east-1b,us-east-1c"
export NAME="aws.sandeepwagh.me"  
export key="/Users/sandy/.ssh/kops-key.pub"
export AWS_PROFILE=root

kops create cluster --name=${NAME} /
 --cloud=aws --master-zones=${ZONES} / 
 --zones=${ZONES} /
 --node-count=3 /
 --topology=private /
 --networking=calico / 
 --node-size=${NODE_SIZE} / 
 --kubernetes-version=1.22.15 /
 --master-size=${MASTER_SIZE} /
 --master-image=ami-08c40ec9ead489470 /
 --node-image=ami-08c40ec9ead489470 /
 --ssh-public-key=${key} /
 --bastion=true /
  --out=./modules/kops /
 --target=terraform --yes

