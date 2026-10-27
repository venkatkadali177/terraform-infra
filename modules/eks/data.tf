data "aws_ami" "eks_node" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amazon-eks-node-al2023-x86_64-standard-*"]
  }
}