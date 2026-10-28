environment = "dev"

key_name = "devops-key"

vpc_cidr = "10.0.0.0/16"

public_subnets = {
  public-1 = {
    cidr = "10.0.1.0/24"
    az   = "ap-south-1a"
  }

  public-2 = {
    cidr = "10.0.2.0/24"
    az   = "ap-south-1b"
  }
}

private_subnets = {
  private-1 = {
    cidr = "10.0.11.0/24"
    az   = "ap-south-1a"
  }

  private-2 = {
    cidr = "10.0.12.0/24"
    az   = "ap-south-1b"
  }
}

bucket_names = [
  "artifacts-388439400978-dev",
  "logs-388439400978-dev",
  "backup-388439400978-dev"
]
project_name = "sri"
eks_version  = "1.36"

desired_size = 5
min_size     = 3
max_size     = 6