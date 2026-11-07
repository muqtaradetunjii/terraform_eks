variable "cluster_name" {
  description = "Name of our EKS cluster"
  type        = string
  default     = "terraform-eks-dev"
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

variable "environment"{
  description = "the vpc environment name"
  type = string
  default = "dev"
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "Public IP ranges allowed to access the EKS Kubernetes API"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


variable "node_instance_types" {
  description = "EC2 instance types for EKS worker nodes"
  type        = list(string)
  default     = ["t3.small"]
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}