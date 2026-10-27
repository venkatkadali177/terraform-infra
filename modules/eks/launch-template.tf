resource "aws_launch_template" "eks_nodes" {
  name_prefix = "${var.cluster_name}-lt-"

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name        = "${var.cluster_name}-worker"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}