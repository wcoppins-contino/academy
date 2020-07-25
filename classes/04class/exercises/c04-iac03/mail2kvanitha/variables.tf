variable vpc-cidr {
  description = "CIDR for devopsacademy-iac VPC"
  type =string
}

variable public-subnet-1a {
  description = "Public Sunbet 1a"
  type =string
}

variable public-subnet-1b {
  description = "Public Sunbet 1b"
  type =string
}

variable private-subnet-1a {
  description = "Private Sunbet 1a"
  type =string
}

variable private-subnet-1b {
  description = "Private Sunbet 1b"
  type =string
}


variable private-subnet-1a-tags {
  description = "Private Sunbet 1a tags"
  type = object ({
      Name = string
   })
}

variable private-subnet-1b-tags {
  description = "Private Sunbet 1b tags"
  type = object ({
      Name = string
   })
}