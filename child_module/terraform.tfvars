vpc_configs = {
  "vpc1" = {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
    tags = {
      Name = "vpc1"
      Environment = "production"
    }
  }

  "vpc2" = {
    cidr_block           = "10.0.1.0/24"
    enable_dns_support   = true
    enable_dns_hostnames = true
    tags = {
      Name = "my-default-vpc"
    }
  }

  "vpc3" = {
    cidr_block           = "10.2.0.0/16"
    enable_dns_support   = false
    enable_dns_hostnames = false
    tags = {
      Name = "vpc3"
      Environment = "staging"
    }
  }
  "vpc4" = {
    cidr_block           = "10.3.0.0/16"
    enable_dns_support   = false
    enable_dns_hostnames = false
    tags = {
      Name = "vpc4"
      Environment = "cilent"
    }
  }
}
