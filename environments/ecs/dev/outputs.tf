output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.ecr.repository_url
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = module.alb.alb_dns_name
}
