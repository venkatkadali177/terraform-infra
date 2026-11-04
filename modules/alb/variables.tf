variable "app_name" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnets for ALB"
  type        = list(string)
}

variable "container_port" {
  description = "Application container port"
  type        = number
  default     = 80
}

variable "certificate_arn" {
  description = "ACM certificate ARN for HTTPS"
  type        = string
  default     = null
}
