variable "aws_region" {
  description = "AWS deployment region"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Existing public subnet IDs for ALB"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Existing private subnet IDs for ECS tasks"
  type        = list(string)
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "app_name" {
  description = "Application name"
  type        = string
}

variable "container_port" {
  description = "Application container port"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}
