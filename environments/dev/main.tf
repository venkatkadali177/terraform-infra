module "vpc" {
  source = "../../modules/vpc"

  project_name = "ktv"
  environment  = var.environment
  cluster_name = "dev-eks"

  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "backend" {
  source = "../../modules/backend"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name       = "dev-eks"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}

module "s3" {
  source = "../../modules/s3"

  bucket_names = var.bucket_names
}