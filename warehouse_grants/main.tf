terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }
}

resource "snowflake_warehouse_grant" "WH_GRANTS" {
  warehouse_name = var.warehouse_name
  privilege = var.privilege
  roles = var.roles

  with_grant_option = var.with_grant_option
}
