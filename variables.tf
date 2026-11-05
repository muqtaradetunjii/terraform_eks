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

