variable "tags" {
  description = "Global tags to apply to all resources"
  type        = map(string)
  default = {
    Owner       = "jaypal"
    Department  = "PES"
    ProjectName = "EIC Internal"
    EndDate     = "EOD"
    BU          = "IA"
    Env         = "Dev"
  }
}

variable "public_subnet_cidr" {
  default = "10.0.15.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.115.0/24"
}

variable "availability_zone" {
  default = "ap-south-1"
}