data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

module "jenkins" {
  source = "../../modules/ec2"

  instance_name = "devops-jenkins"

  ami_id        = data.aws_ami.amazon_linux.id
  instance_type = "t3.small"

  subnet_id = module.vpc.public_subnet_ids[0]

  security_group_ids = [
    aws_security_group.jenkins.id
  ]

  key_name = var.key_name

  iam_instance_profile = aws_iam_instance_profile.jenkins.name

  user_data = file("${path.module}/jenkins-userdata.sh")

  tags = {
    Environment = "dev"
    Project     = "terraform-infra"
  }
}