terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    opensearch = {
      source  = "opensearch-project/opensearch"
      version = "2.2.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 1.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.6"
    }
  }
}

# AWS Provider configuration
provider "aws" {
  region = "eu-west-1"  # Change to your preferred region
}

# OpenSearch provider configuration - this will be configured by the Bedrock module
provider "opensearch" {
  url = "http://localhost:9200"  # Placeholder - will be overridden by module
}

resource "random_string" "random_suffix" {
  length  = 8
  special = false
  upper   = false
}
