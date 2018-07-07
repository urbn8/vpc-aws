

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-dev-phanbook-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-dev-phanbook-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-dev-phanbook-com.name}"
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-dev-phanbook-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-central-1a-dev-phanbook-com.id}", "${aws_subnet.eu-central-1b-dev-phanbook-com.id}", "${aws_subnet.eu-central-1c-dev-phanbook-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-dev-phanbook-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-dev-phanbook-com.name}"
}

output "region" {
  value = "eu-central-1"
}

output "vpc_id" {
  value = "vpc-be0353d5"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_autoscaling_group" "master-eu-central-1a-1-masters-dev-phanbook-com" {
  name                 = "master-eu-central-1a-1.masters.dev.phanbook.com"
  launch_configuration = "${aws_launch_configuration.master-eu-central-1a-1-masters-dev-phanbook-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-central-1a-dev-phanbook-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-central-1a-1.masters.dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-central-1a-1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-central-1a-2-masters-dev-phanbook-com" {
  name                 = "master-eu-central-1a-2.masters.dev.phanbook.com"
  launch_configuration = "${aws_launch_configuration.master-eu-central-1a-2-masters-dev-phanbook-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-central-1a-dev-phanbook-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-central-1a-2.masters.dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-central-1a-2"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-central-1a-3-masters-dev-phanbook-com" {
  name                 = "master-eu-central-1a-3.masters.dev.phanbook.com"
  launch_configuration = "${aws_launch_configuration.master-eu-central-1a-3-masters-dev-phanbook-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-central-1a-dev-phanbook-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-central-1a-3.masters.dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-central-1a-3"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-dev-phanbook-com" {
  name                 = "nodes.dev.phanbook.com"
  launch_configuration = "${aws_launch_configuration.nodes-dev-phanbook-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.eu-central-1a-dev-phanbook-com.id}", "${aws_subnet.eu-central-1b-dev-phanbook-com.id}", "${aws_subnet.eu-central-1c-dev-phanbook-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.dev.phanbook.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "1-etcd-events-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "1.etcd-events.dev.phanbook.com"
    "k8s.io/etcd/events"                     = "1/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_ebs_volume" "1-etcd-main-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "1.etcd-main.dev.phanbook.com"
    "k8s.io/etcd/main"                       = "1/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_ebs_volume" "2-etcd-events-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "2.etcd-events.dev.phanbook.com"
    "k8s.io/etcd/events"                     = "2/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_ebs_volume" "2-etcd-main-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "2.etcd-main.dev.phanbook.com"
    "k8s.io/etcd/main"                       = "2/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_ebs_volume" "3-etcd-events-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "3.etcd-events.dev.phanbook.com"
    "k8s.io/etcd/events"                     = "3/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_ebs_volume" "3-etcd-main-dev-phanbook-com" {
  availability_zone = "eu-central-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "3.etcd-main.dev.phanbook.com"
    "k8s.io/etcd/main"                       = "3/1,2,3"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-dev-phanbook-com" {
  name = "masters.dev.phanbook.com"
  role = "${aws_iam_role.masters-dev-phanbook-com.name}"
}

resource "aws_iam_instance_profile" "nodes-dev-phanbook-com" {
  name = "nodes.dev.phanbook.com"
  role = "${aws_iam_role.nodes-dev-phanbook-com.name}"
}

resource "aws_iam_role" "masters-dev-phanbook-com" {
  name               = "masters.dev.phanbook.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.dev.phanbook.com_policy")}"
}

resource "aws_iam_role" "nodes-dev-phanbook-com" {
  name               = "nodes.dev.phanbook.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.dev.phanbook.com_policy")}"
}

resource "aws_iam_role_policy" "masters-dev-phanbook-com" {
  name   = "masters.dev.phanbook.com"
  role   = "${aws_iam_role.masters-dev-phanbook-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.dev.phanbook.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-dev-phanbook-com" {
  name   = "nodes.dev.phanbook.com"
  role   = "${aws_iam_role.nodes-dev-phanbook-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.dev.phanbook.com_policy")}"
}

resource "aws_key_pair" "kubernetes-dev-phanbook-com-5a20d18e8f6aefb4a94968e1fbe7d975" {
  key_name   = "kubernetes.dev.phanbook.com-5a:20:d1:8e:8f:6a:ef:b4:a9:49:68:e1:fb:e7:d9:75"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.dev.phanbook.com-5a20d18e8f6aefb4a94968e1fbe7d975_public_key")}"
}

resource "aws_launch_configuration" "master-eu-central-1a-1-masters-dev-phanbook-com" {
  name_prefix                 = "master-eu-central-1a-1.masters.dev.phanbook.com-"
  image_id                    = "ami-a92b43c6"
  instance_type               = "t2.nano"
  key_name                    = "${aws_key_pair.kubernetes-dev-phanbook-com-5a20d18e8f6aefb4a94968e1fbe7d975.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dev-phanbook-com.id}"
  security_groups             = ["${aws_security_group.masters-dev-phanbook-com.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-central-1a-1.masters.dev.phanbook.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-central-1a-2-masters-dev-phanbook-com" {
  name_prefix                 = "master-eu-central-1a-2.masters.dev.phanbook.com-"
  image_id                    = "ami-a92b43c6"
  instance_type               = "t2.nano"
  key_name                    = "${aws_key_pair.kubernetes-dev-phanbook-com-5a20d18e8f6aefb4a94968e1fbe7d975.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dev-phanbook-com.id}"
  security_groups             = ["${aws_security_group.masters-dev-phanbook-com.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-central-1a-2.masters.dev.phanbook.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-central-1a-3-masters-dev-phanbook-com" {
  name_prefix                 = "master-eu-central-1a-3.masters.dev.phanbook.com-"
  image_id                    = "ami-a92b43c6"
  instance_type               = "t2.nano"
  key_name                    = "${aws_key_pair.kubernetes-dev-phanbook-com-5a20d18e8f6aefb4a94968e1fbe7d975.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-dev-phanbook-com.id}"
  security_groups             = ["${aws_security_group.masters-dev-phanbook-com.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-central-1a-3.masters.dev.phanbook.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-dev-phanbook-com" {
  name_prefix                 = "nodes.dev.phanbook.com-"
  image_id                    = "ami-a92b43c6"
  instance_type               = "t2.nano"
  key_name                    = "${aws_key_pair.kubernetes-dev-phanbook-com-5a20d18e8f6aefb4a94968e1fbe7d975.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-dev-phanbook-com.id}"
  security_groups             = ["${aws_security_group.nodes-dev-phanbook-com.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.dev.phanbook.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.dev-phanbook-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "igw-504b1238"
}

resource "aws_route_table" "dev-phanbook-com" {
  vpc_id = "vpc-be0353d5"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "dev.phanbook.com"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
    "kubernetes.io/kops/role"                = "public"
  }
}

resource "aws_route_table_association" "eu-central-1a-dev-phanbook-com" {
  subnet_id      = "${aws_subnet.eu-central-1a-dev-phanbook-com.id}"
  route_table_id = "${aws_route_table.dev-phanbook-com.id}"
}

resource "aws_route_table_association" "eu-central-1b-dev-phanbook-com" {
  subnet_id      = "${aws_subnet.eu-central-1b-dev-phanbook-com.id}"
  route_table_id = "${aws_route_table.dev-phanbook-com.id}"
}

resource "aws_route_table_association" "eu-central-1c-dev-phanbook-com" {
  subnet_id      = "${aws_subnet.eu-central-1c-dev-phanbook-com.id}"
  route_table_id = "${aws_route_table.dev-phanbook-com.id}"
}

resource "aws_security_group" "masters-dev-phanbook-com" {
  name        = "masters.dev.phanbook.com"
  vpc_id      = "vpc-be0353d5"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "masters.dev.phanbook.com"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_security_group" "nodes-dev-phanbook-com" {
  name        = "nodes.dev.phanbook.com"
  vpc_id      = "vpc-be0353d5"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "nodes.dev.phanbook.com"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.masters-dev-phanbook-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.masters-dev-phanbook-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "https-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-dev-phanbook-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-dev-phanbook-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-dev-phanbook-com.id}"
  source_security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-dev-phanbook-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-dev-phanbook-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "eu-central-1a-dev-phanbook-com" {
  vpc_id            = "vpc-be0353d5"
  cidr_block        = "172.31.96.0/20"
  availability_zone = "eu-central-1a"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "eu-central-1a.dev.phanbook.com"
    SubnetType                               = "Public"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "eu-central-1b-dev-phanbook-com" {
  vpc_id            = "vpc-be0353d5"
  cidr_block        = "172.31.112.0/20"
  availability_zone = "eu-central-1b"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "eu-central-1b.dev.phanbook.com"
    SubnetType                               = "Public"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "eu-central-1c-dev-phanbook-com" {
  vpc_id            = "vpc-be0353d5"
  cidr_block        = "172.31.96.128/20"
  availability_zone = "eu-central-1c"

  tags = {
    KubernetesCluster                        = "dev.phanbook.com"
    Name                                     = "eu-central-1c.dev.phanbook.com"
    SubnetType                               = "Public"
    "kubernetes.io/cluster/dev.phanbook.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

terraform = {
  required_version = ">= 0.9.3"
}
