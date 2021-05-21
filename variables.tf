### Define AWS variables and EKS Cluster settings
# Generate Random String
resource "random_string" "suffix" {
  length  = 2
  special = false
}


# AWS 
variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "AWS_REGION" {
	default		= "eu-west-3"
	description	= "AWS region"
}

# MASTER NAME
variable "MASTER_NAME" {
	default		= "chrisley"
	description	= "Master Name to name Cluster, VPC, SG...."
}

# EKS 
variable "EKS_CLUSTER_NAME" {
	default		= "eks-$(var.MASTER_NAME)-${random_string.suffix.result}"
	description	= "Cluster default Name"
} 

