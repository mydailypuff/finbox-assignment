terraform {
  backend "s3" {
    bucket         = "finbox-assessment"  # Change this to your actual S3 bucket name
    key            = "eks/minimal-eks-cluster.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"  # Optional: For state locking
    profile        = "alrete"  # Ensure this matches your AWS profile
  }
}