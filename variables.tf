### Define AWS variables and EKS Cluster settings

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

variable "K8s_VERSION" {
	default		= "1.20"
	description	= "Kubernetes version deployed"
}

variable "INSTANCE_TYPE" {
	default		= "m1.small"
	description	= "Size of the instance deployed for worker nodes"
}

variable "MIN_WORKER_NODE" {
	default		= "1"
	description	= "Minimum worker node(s) created"
}

variable "MAX_WORKER_NODE" {
        default         = "1"
        description     = "Maximum worker node(s) created"
}

variable "DESIRED_WORKER_NODE" {
        default         = "1"
        description     = "Desired worker node(s) created"
}

