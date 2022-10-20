locals {
  bastion_autoscaling_group_ids     = [aws_autoscaling_group.bastions-aws-sandeepwagh-me.id]
  bastion_security_group_ids        = [aws_security_group.bastion-aws-sandeepwagh-me.id]
  bastions_role_arn                 = aws_iam_role.bastions-aws-sandeepwagh-me.arn
  bastions_role_name                = aws_iam_role.bastions-aws-sandeepwagh-me.name
  cluster_name                      = "aws.sandeepwagh.me"
  master_autoscaling_group_ids      = [aws_autoscaling_group.master-us-east-1a-masters-aws-sandeepwagh-me.id, aws_autoscaling_group.master-us-east-1b-masters-aws-sandeepwagh-me.id, aws_autoscaling_group.master-us-east-1c-masters-aws-sandeepwagh-me.id]
  master_security_group_ids         = [aws_security_group.masters-aws-sandeepwagh-me.id]
  masters_role_arn                  = aws_iam_role.masters-aws-sandeepwagh-me.arn
  masters_role_name                 = aws_iam_role.masters-aws-sandeepwagh-me.name
  node_autoscaling_group_ids        = [aws_autoscaling_group.nodes-us-east-1a-aws-sandeepwagh-me.id, aws_autoscaling_group.nodes-us-east-1b-aws-sandeepwagh-me.id, aws_autoscaling_group.nodes-us-east-1c-aws-sandeepwagh-me.id]
  node_security_group_ids           = [aws_security_group.nodes-aws-sandeepwagh-me.id]
  node_subnet_ids                   = [aws_subnet.us-east-1a-aws-sandeepwagh-me.id, aws_subnet.us-east-1b-aws-sandeepwagh-me.id, aws_subnet.us-east-1c-aws-sandeepwagh-me.id]
  nodes_role_arn                    = aws_iam_role.nodes-aws-sandeepwagh-me.arn
  nodes_role_name                   = aws_iam_role.nodes-aws-sandeepwagh-me.name
  region                            = "us-east-1"
  route_table_private-us-east-1a_id = aws_route_table.private-us-east-1a-aws-sandeepwagh-me.id
  route_table_private-us-east-1b_id = aws_route_table.private-us-east-1b-aws-sandeepwagh-me.id
  route_table_private-us-east-1c_id = aws_route_table.private-us-east-1c-aws-sandeepwagh-me.id
  route_table_public_id             = aws_route_table.aws-sandeepwagh-me.id
  subnet_us-east-1a_id              = aws_subnet.us-east-1a-aws-sandeepwagh-me.id
  subnet_us-east-1b_id              = aws_subnet.us-east-1b-aws-sandeepwagh-me.id
  subnet_us-east-1c_id              = aws_subnet.us-east-1c-aws-sandeepwagh-me.id
  subnet_utility-us-east-1a_id      = aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id
  subnet_utility-us-east-1b_id      = aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id
  subnet_utility-us-east-1c_id      = aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id
  vpc_id                            = "vpc-0eedac52e2a565246"
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-aws-sandeepwagh-me.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-aws-sandeepwagh-me.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-aws-sandeepwagh-me.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-aws-sandeepwagh-me.name
}

output "cluster_name" {
  value = "aws.sandeepwagh.me"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-aws-sandeepwagh-me.id, aws_autoscaling_group.master-us-east-1b-masters-aws-sandeepwagh-me.id, aws_autoscaling_group.master-us-east-1c-masters-aws-sandeepwagh-me.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-aws-sandeepwagh-me.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-aws-sandeepwagh-me.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-aws-sandeepwagh-me.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-aws-sandeepwagh-me.id, aws_autoscaling_group.nodes-us-east-1b-aws-sandeepwagh-me.id, aws_autoscaling_group.nodes-us-east-1c-aws-sandeepwagh-me.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-aws-sandeepwagh-me.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.us-east-1a-aws-sandeepwagh-me.id, aws_subnet.us-east-1b-aws-sandeepwagh-me.id, aws_subnet.us-east-1c-aws-sandeepwagh-me.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-aws-sandeepwagh-me.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-aws-sandeepwagh-me.name
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = aws_route_table.private-us-east-1a-aws-sandeepwagh-me.id
}

output "route_table_private-us-east-1b_id" {
  value = aws_route_table.private-us-east-1b-aws-sandeepwagh-me.id
}

output "route_table_private-us-east-1c_id" {
  value = aws_route_table.private-us-east-1c-aws-sandeepwagh-me.id
}

output "route_table_public_id" {
  value = aws_route_table.aws-sandeepwagh-me.id
}

output "subnet_us-east-1a_id" {
  value = aws_subnet.us-east-1a-aws-sandeepwagh-me.id
}

output "subnet_us-east-1b_id" {
  value = aws_subnet.us-east-1b-aws-sandeepwagh-me.id
}

output "subnet_us-east-1c_id" {
  value = aws_subnet.us-east-1c-aws-sandeepwagh-me.id
}

output "subnet_utility-us-east-1a_id" {
  value = aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id
}

output "subnet_utility-us-east-1b_id" {
  value = aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id
}

output "subnet_utility-us-east-1c_id" {
  value = aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id
}

output "vpc_id" {
  value = "vpc-0eedac52e2a565246"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-aws-sandeepwagh-me.id
    version = aws_launch_template.bastions-aws-sandeepwagh-me.latest_version
  }
  load_balancers        = [aws_elb.bastion-aws-sandeepwagh-me.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-aws-sandeepwagh-me.id, aws_subnet.us-east-1b-aws-sandeepwagh-me.id, aws_subnet.us-east-1c-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1a-masters-aws-sandeepwagh-me.id
    version = aws_launch_template.master-us-east-1a-masters-aws-sandeepwagh-me.latest_version
  }
  load_balancers        = [aws_elb.api-aws-sandeepwagh-me.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1a.masters.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1b-masters-aws-sandeepwagh-me.id
    version = aws_launch_template.master-us-east-1b-masters-aws-sandeepwagh-me.latest_version
  }
  load_balancers        = [aws_elb.api-aws-sandeepwagh-me.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1b.masters.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1b.masters.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1c-masters-aws-sandeepwagh-me.id
    version = aws_launch_template.master-us-east-1c-masters-aws-sandeepwagh-me.latest_version
  }
  load_balancers        = [aws_elb.api-aws-sandeepwagh-me.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1c.masters.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1c.masters.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-aws-sandeepwagh-me.id
    version = aws_launch_template.nodes-us-east-1a-aws-sandeepwagh-me.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-aws-sandeepwagh-me.id
    version = aws_launch_template.nodes-us-east-1b-aws-sandeepwagh-me.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-aws-sandeepwagh-me.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-aws-sandeepwagh-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-aws-sandeepwagh-me.id
    version = aws_launch_template.nodes-us-east-1c-aws-sandeepwagh-me.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1c.aws.sandeepwagh.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "aws.sandeepwagh.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.aws.sandeepwagh.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/aws.sandeepwagh.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-aws-sandeepwagh-me.id]
}

resource "aws_ebs_volume" "a-etcd-events-aws-sandeepwagh-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "a.etcd-events.aws.sandeepwagh.me"
    "k8s.io/etcd/events"                       = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-aws-sandeepwagh-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "a.etcd-main.aws.sandeepwagh.me"
    "k8s.io/etcd/main"                         = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-events-aws-sandeepwagh-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "b.etcd-events.aws.sandeepwagh.me"
    "k8s.io/etcd/events"                       = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-main-aws-sandeepwagh-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "b.etcd-main.aws.sandeepwagh.me"
    "k8s.io/etcd/main"                         = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-events-aws-sandeepwagh-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "c.etcd-events.aws.sandeepwagh.me"
    "k8s.io/etcd/events"                       = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-main-aws-sandeepwagh-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "c.etcd-main.aws.sandeepwagh.me"
    "k8s.io/etcd/main"                         = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_eip" "us-east-1a-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1a.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1b-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1b.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1c-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1c.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc = true
}

resource "aws_elb" "api-aws-sandeepwagh-me" {
  connection_draining         = true
  connection_draining_timeout = 300
  cross_zone_load_balancing   = false
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "SSL:443"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }
  name            = "api-aws-sandeepwagh-me-phv8r3"
  security_groups = [aws_security_group.api-elb-aws-sandeepwagh-me.id]
  subnets         = [aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id, aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id, aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id]
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "api.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_elb" "bastion-aws-sandeepwagh-me" {
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "TCP:22"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }
  name            = "bastion-aws-sandeepwagh-m-3ohg0h"
  security_groups = [aws_security_group.bastion-elb-aws-sandeepwagh-me.id]
  subnets         = [aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id, aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id, aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id]
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "bastion.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-aws-sandeepwagh-me" {
  name = "bastions.aws.sandeepwagh.me"
  role = aws_iam_role.bastions-aws-sandeepwagh-me.name
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "bastions.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-aws-sandeepwagh-me" {
  name = "masters.aws.sandeepwagh.me"
  role = aws_iam_role.masters-aws-sandeepwagh-me.name
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "masters.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-aws-sandeepwagh-me" {
  name = "nodes.aws.sandeepwagh.me"
  role = aws_iam_role.nodes-aws-sandeepwagh-me.name
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "nodes.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_role" "bastions-aws-sandeepwagh-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.aws.sandeepwagh.me_policy")
  name               = "bastions.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "bastions.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_role" "masters-aws-sandeepwagh-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.aws.sandeepwagh.me_policy")
  name               = "masters.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "masters.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_role" "nodes-aws-sandeepwagh-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.aws.sandeepwagh.me_policy")
  name               = "nodes.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "nodes.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-aws-sandeepwagh-me" {
  name   = "bastions.aws.sandeepwagh.me"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.aws.sandeepwagh.me_policy")
  role   = aws_iam_role.bastions-aws-sandeepwagh-me.name
}

resource "aws_iam_role_policy" "masters-aws-sandeepwagh-me" {
  name   = "masters.aws.sandeepwagh.me"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.aws.sandeepwagh.me_policy")
  role   = aws_iam_role.masters-aws-sandeepwagh-me.name
}

resource "aws_iam_role_policy" "nodes-aws-sandeepwagh-me" {
  name   = "nodes.aws.sandeepwagh.me"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.aws.sandeepwagh.me_policy")
  role   = aws_iam_role.nodes-aws-sandeepwagh-me.name
}

resource "aws_key_pair" "kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436" {
  key_name   = "kubernetes.aws.sandeepwagh.me-71:d0:1b:1e:8c:d8:37:c3:02:52:a0:70:b3:61:c4:36"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.aws.sandeepwagh.me-71d01b1e8cd837c30252a070b361c436_public_key")
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_launch_template" "bastions-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 32
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.bastions-aws-sandeepwagh-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "bastions.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "bastions.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
    "Name"                                                                       = "bastions.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
  }
}

resource "aws_launch_template" "master-us-east-1a-masters-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1a.masters.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
    "Name"                                                                                                  = "master-us-east-1a.masters.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1a.masters.aws.sandeepwagh.me_user_data")
}

resource "aws_launch_template" "master-us-east-1b-masters-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1b.masters.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
    "Name"                                                                                                  = "master-us-east-1b.masters.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1b.masters.aws.sandeepwagh.me_user_data")
}

resource "aws_launch_template" "master-us-east-1c-masters-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1c.masters.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "aws.sandeepwagh.me"
    "Name"                                                                                                  = "master-us-east-1c.masters.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1c.masters.aws.sandeepwagh.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1a.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1a.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1a.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
    "Name"                                                                       = "nodes-us-east-1a.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.aws.sandeepwagh.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1b.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1b.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1b.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
    "Name"                                                                       = "nodes-us-east-1b.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.aws.sandeepwagh.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-aws-sandeepwagh-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-aws-sandeepwagh-me.id
  }
  image_id      = "ami-08c40ec9ead489470"
  instance_type = "t3.small"
  key_name      = aws_key_pair.kubernetes-aws-sandeepwagh-me-71d01b1e8cd837c30252a070b361c436.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1c.aws.sandeepwagh.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-aws-sandeepwagh-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1c.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
      "Name"                                                                       = "nodes-us-east-1c.aws.sandeepwagh.me"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "aws.sandeepwagh.me"
    "Name"                                                                       = "nodes-us-east-1c.aws.sandeepwagh.me"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/aws.sandeepwagh.me"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.aws.sandeepwagh.me_user_data")
}

resource "aws_nat_gateway" "us-east-1a-aws-sandeepwagh-me" {
  allocation_id = aws_eip.us-east-1a-aws-sandeepwagh-me.id
  subnet_id     = aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1a.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-aws-sandeepwagh-me" {
  allocation_id = aws_eip.us-east-1b-aws-sandeepwagh-me.id
  subnet_id     = aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1b.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-aws-sandeepwagh-me" {
  allocation_id = aws_eip.us-east-1c-aws-sandeepwagh-me.id
  subnet_id     = aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "us-east-1c.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "igw-0a6fa33ca9ac6b01b"
  route_table_id         = aws_route_table.aws-sandeepwagh-me.id
}

resource "aws_route" "route-__--0" {
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = "igw-0a6fa33ca9ac6b01b"
  route_table_id              = aws_route_table.aws-sandeepwagh-me.id
}

resource "aws_route" "route-private-us-east-1a-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1a-aws-sandeepwagh-me.id
  route_table_id         = aws_route_table.private-us-east-1a-aws-sandeepwagh-me.id
}

resource "aws_route" "route-private-us-east-1b-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1b-aws-sandeepwagh-me.id
  route_table_id         = aws_route_table.private-us-east-1b-aws-sandeepwagh-me.id
}

resource "aws_route" "route-private-us-east-1c-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1c-aws-sandeepwagh-me.id
  route_table_id         = aws_route_table.private-us-east-1c-aws-sandeepwagh-me.id
}

resource "aws_route53_record" "api-aws-sandeepwagh-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-aws-sandeepwagh-me.dns_name
    zone_id                = aws_elb.api-aws-sandeepwagh-me.zone_id
  }
  name    = "api.aws.sandeepwagh.me"
  type    = "A"
  zone_id = "/hostedzone/Z0396405232PHGA62KNAH"
}

resource "aws_route53_record" "bastion-aws-sandeepwagh-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-aws-sandeepwagh-me.dns_name
    zone_id                = aws_elb.bastion-aws-sandeepwagh-me.zone_id
  }
  name    = "bastion.aws.sandeepwagh.me"
  type    = "A"
  zone_id = "/hostedzone/Z0396405232PHGA62KNAH"
}

resource "aws_route_table" "aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/kops/role"                  = "public"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_route_table" "private-us-east-1a-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "private-us-east-1a.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1a"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_route_table" "private-us-east-1b-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "private-us-east-1b.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1b"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_route_table" "private-us-east-1c-aws-sandeepwagh-me" {
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "private-us-east-1c.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1c"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_route_table_association" "private-us-east-1a-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.private-us-east-1a-aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.us-east-1a-aws-sandeepwagh-me.id
}

resource "aws_route_table_association" "private-us-east-1b-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.private-us-east-1b-aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.us-east-1b-aws-sandeepwagh-me.id
}

resource "aws_route_table_association" "private-us-east-1c-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.private-us-east-1c-aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.us-east-1c-aws-sandeepwagh-me.id
}

resource "aws_route_table_association" "utility-us-east-1a-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.utility-us-east-1a-aws-sandeepwagh-me.id
}

resource "aws_route_table_association" "utility-us-east-1b-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.utility-us-east-1b-aws-sandeepwagh-me.id
}

resource "aws_route_table_association" "utility-us-east-1c-aws-sandeepwagh-me" {
  route_table_id = aws_route_table.aws-sandeepwagh-me.id
  subnet_id      = aws_subnet.utility-us-east-1c-aws-sandeepwagh-me.id
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key                    = "aws.sandeepwagh.me/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-bootstrap" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-bootstrap_content")
  key                    = "aws.sandeepwagh.me/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "aws.sandeepwagh.me/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key                    = "aws.sandeepwagh.me/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "aws.sandeepwagh.me/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "aws.sandeepwagh.me/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-limit-range-addons-k8s-io" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-limit-range.addons.k8s.io_content")
  key                    = "aws.sandeepwagh.me/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-networking-projectcalico-org-k8s-1-22" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-networking.projectcalico.org-k8s-1.22_content")
  key                    = "aws.sandeepwagh.me/addons/networking.projectcalico.org/k8s-1.22.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "aws-sandeepwagh-me-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_aws.sandeepwagh.me-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key                    = "aws.sandeepwagh.me/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key                    = "aws.sandeepwagh.me/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key                    = "aws.sandeepwagh.me/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key                    = "aws.sandeepwagh.me/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-version-txt" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key                    = "aws.sandeepwagh.me/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1a" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1a_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/events-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1b" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1b_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/events-master-us-east-1b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1c" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1c_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/events-master-us-east-1c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1a" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1a_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/main-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1b" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1b_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/main-master-us-east-1b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1c" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1c_content")
  key                    = "aws.sandeepwagh.me/manifests/etcd/main-master-us-east-1c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "aws.sandeepwagh.me/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1a" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1a_content")
  key                    = "aws.sandeepwagh.me/igconfig/master/master-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1b" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1b_content")
  key                    = "aws.sandeepwagh.me/igconfig/master/master-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1c" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1c_content")
  key                    = "aws.sandeepwagh.me/igconfig/master/master-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1a" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1a_content")
  key                    = "aws.sandeepwagh.me/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1b" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1b_content")
  key                    = "aws.sandeepwagh.me/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1c" {
  bucket                 = "sandeepwagh.me"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1c_content")
  key                    = "aws.sandeepwagh.me/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_security_group" "api-elb-aws-sandeepwagh-me" {
  description = "Security group for api ELB"
  name        = "api-elb.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "api-elb.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_security_group" "bastion-aws-sandeepwagh-me" {
  description = "Security group for bastion"
  name        = "bastion.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "bastion.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_security_group" "bastion-elb-aws-sandeepwagh-me" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "bastion-elb.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_security_group" "masters-aws-sandeepwagh-me" {
  description = "Security group for masters"
  name        = "masters.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "masters.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_security_group" "nodes-aws-sandeepwagh-me" {
  description = "Security group for nodes"
  name        = "nodes.aws.sandeepwagh.me"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "nodes.aws.sandeepwagh.me"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-aws-sandeepwagh-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-aws-sandeepwagh-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-aws-sandeepwagh-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-aws-sandeepwagh-me" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-aws-sandeepwagh-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-aws-sandeepwagh-me" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-aws-sandeepwagh-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-aws-sandeepwagh-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-aws-sandeepwagh-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-aws-sandeepwagh-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-aws-sandeepwagh-me-ingress-tcp-22to22-masters-aws-sandeepwagh-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.bastion-aws-sandeepwagh-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-aws-sandeepwagh-me-ingress-tcp-22to22-nodes-aws-sandeepwagh-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.bastion-aws-sandeepwagh-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-elb-aws-sandeepwagh-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-aws-sandeepwagh-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-aws-sandeepwagh-me-ingress-tcp-22to22-bastion-aws-sandeepwagh-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.bastion-elb-aws-sandeepwagh-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-aws-sandeepwagh-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-aws-sandeepwagh-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-aws-sandeepwagh-me-ingress-all-0to0-masters-aws-sandeepwagh-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.masters-aws-sandeepwagh-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-aws-sandeepwagh-me-ingress-all-0to0-nodes-aws-sandeepwagh-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.masters-aws-sandeepwagh-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-4-0to0-masters-aws-sandeepwagh-me" {
  from_port                = 0
  protocol                 = "4"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-all-0to0-nodes-aws-sandeepwagh-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-tcp-1to2379-masters-aws-sandeepwagh-me" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-tcp-2382to4000-masters-aws-sandeepwagh-me" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-tcp-4003to65535-masters-aws-sandeepwagh-me" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-aws-sandeepwagh-me-ingress-udp-1to65535-masters-aws-sandeepwagh-me" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.nodes-aws-sandeepwagh-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-aws-sandeepwagh-me.id
  source_security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-aws-sandeepwagh-me.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_subnet" "us-east-1a-aws-sandeepwagh-me" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.168.32.0/19"
  tags = {
    "KubernetesCluster"                            = "aws.sandeepwagh.me"
    "Name"                                         = "us-east-1a.aws.sandeepwagh.me"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1a" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1a"  = "true"
    "kubernetes.io/cluster/aws.sandeepwagh.me"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_subnet" "us-east-1b-aws-sandeepwagh-me" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.168.64.0/19"
  tags = {
    "KubernetesCluster"                            = "aws.sandeepwagh.me"
    "Name"                                         = "us-east-1b.aws.sandeepwagh.me"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1b" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1b"  = "true"
    "kubernetes.io/cluster/aws.sandeepwagh.me"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_subnet" "us-east-1c-aws-sandeepwagh-me" {
  availability_zone = "us-east-1c"
  cidr_block        = "172.168.96.0/19"
  tags = {
    "KubernetesCluster"                            = "aws.sandeepwagh.me"
    "Name"                                         = "us-east-1c.aws.sandeepwagh.me"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1c" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1c"  = "true"
    "kubernetes.io/cluster/aws.sandeepwagh.me"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_subnet" "utility-us-east-1a-aws-sandeepwagh-me" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.168.0.0/22"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "utility-us-east-1a.aws.sandeepwagh.me"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_subnet" "utility-us-east-1b-aws-sandeepwagh-me" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.168.4.0/22"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "utility-us-east-1b.aws.sandeepwagh.me"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

resource "aws_subnet" "utility-us-east-1c-aws-sandeepwagh-me" {
  availability_zone = "us-east-1c"
  cidr_block        = "172.168.8.0/22"
  tags = {
    "KubernetesCluster"                        = "aws.sandeepwagh.me"
    "Name"                                     = "utility-us-east-1c.aws.sandeepwagh.me"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/aws.sandeepwagh.me" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = "vpc-0eedac52e2a565246"
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 4.0.0"
    }
  }
}
