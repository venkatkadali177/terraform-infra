variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "private_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "bucket_names" {
  type = list(string)
}

variable "key_name" {
  description = "AWS EC2 Key Pair Name"
  type        = string
}