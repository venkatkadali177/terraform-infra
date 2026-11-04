module "ecr" {
  source = "../../../modules/ecr"

  app_name    = var.app_name
  environment = var.environment
}

module "alb" {
  source = "../../../modules/alb"

  app_name          = var.app_name
  environment       = var.environment
  vpc_id            = var.vpc_id
  public_subnet_ids = var.public_subnet_ids
  container_port    = var.container_port
}

module "ecs" {
  source = "../../../modules/ecs"

  app_name              = var.app_name
  environment           = var.environment
  vpc_id                = var.vpc_id
  private_subnet_ids    = var.private_subnet_ids
  container_image       = "${module.ecr.repository_url}:initial"
  container_port        = var.container_port
  desired_count         = var.desired_count
  target_group_arn      = module.alb.target_group_arn
  aws_region            = var.aws_region
  alb_security_group_id = module.alb.alb_security_group_id
}
