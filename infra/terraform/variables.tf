variable "aws_region" {
  description = "AWS region for the EKS cluster"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "minimal-eks-cluster"
}

variable "instance_type" {
  description = "Instance type for the EKS nodes"
  type        = string
  default     = "t3.small"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of existing subnet IDs"
  type        = list(string)
}

variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "eks-container-repo"
}