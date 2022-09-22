terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "vtad"

    workspaces {
      name = "gh-actions-snowflake"
    }
  }
}

provider "snowflake" {
  region   = "sa-east-1.aws"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
