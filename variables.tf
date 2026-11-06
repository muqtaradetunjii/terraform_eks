variable "cluster_name" {
  description = "Name of our EKS cluster"
  type        = string
  default     = "terraform-eks-lab"
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.34"
}

variable "aws_region"{
  description = "this is the aws infra region" 
  type = string
  default = "eu-north-1"
}

variable "vpc_cidr" {
  description = "this is the cidr block ip of the vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_environment"{
  description = "the vpc environment name"
  type = string
  default = "dev"
}