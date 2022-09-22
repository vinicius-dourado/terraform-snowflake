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
}

resource "snowflake_database" "raw_db" {
  name    = "RAW_DB"
  comment = "Database for Snowflake Terraform demo - Raw"
}

resource "snowflake_database" "integration_db" {
  name    = "INTEGRATION_DB"
  comment = "Database for Snowflake Terraform demo - Integration"
}

resource "snowflake_database" "datamart_db" {
  name    = "DATAMART_DB"
  comment = "Database for Snowflake Terraform demo - Datamart"
}
