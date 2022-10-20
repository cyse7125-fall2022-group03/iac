#! /bin/bash
export KOPS_STATE_STORE="s3://sandeepwagh.me/" 
export MASTER_SIZE="t3.small"
export NODE_SIZE="t3.small"
export ZONES="us-east-1a,us-east-1b,us-east-1c"
export NAME="aws.sandeepwagh.me"  
export key="/Users/sandy/.ssh/kops-key.pub"
export AWS_PROFILE=root
