module "eks" {
  source  = "terraform-aws-modules/eks/aws"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnet_ids      = var.subnet_ids
  vpc_id          = var.vpc_id

  eks_managed_node_groups = {
    minimal_nodes = {
      instance_types = [var.instance_type]
      desired_size   = 1
      min_size       = 1
      max_size       = 1
    }
  }
}

resource "aws_ecr_repository" "eks_repo" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name = var.ecr_repo_name
  }
}