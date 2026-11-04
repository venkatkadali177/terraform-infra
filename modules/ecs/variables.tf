variable "app_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "container_image" {
  type = string
}

variable "container_port" {
  type    = number
  default = 80
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "target_group_arn" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "alb_security_group_id" {
  type = string
}