variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type    = string
  default = "1.36"
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.small"]
}

variable "endpoint_private_access" {
  type    = bool
  default = true
}

variable "endpoint_public_access" {
  type    = bool
  default = true
}
variable "allowed_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
variable "cluster_log_types" {
  type = list(string)

  default = [
    "api",
    "audit",
    "authenticator"
  ]
}
variable "desired_size" {
  default = 3
}

variable "min_size" {
  default = 2
}

variable "max_size" {
  default = 4
}


