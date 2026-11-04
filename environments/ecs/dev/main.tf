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
