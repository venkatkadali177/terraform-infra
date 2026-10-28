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
  default = ["t3.micro"]
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
  type = number
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number 
}

variable "public_access_cidrs" {
  type = list(string)

  default = [
    "0.0.0.0/0"
  ]
}

