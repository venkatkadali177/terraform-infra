resource "aws_launch_template" "eks_nodes" {
  name_prefix   = "${var.cluster_name}-lt-"
  image_id      = data.aws_ami.eks_node.id
  instance_type = var.node_instance_types[0]

  vpc_security_group_ids = [
    aws_security_group.node_sg.id
  ]

  user_data = base64encode(
    templatefile("${path.module}/userdata.sh", {
      cluster_name = var.cluster_name
    })
  )

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name        = "${var.cluster_name}-worker"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}