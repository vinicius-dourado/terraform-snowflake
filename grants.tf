resource "snowflake_warehouse_grant" "access_grant" {
  warehouse_name = "COMPUTE_WH"
  privilege      = "USAGE"

  roles = [
    "raw_full","integration_full","integration_r","datamart_rw",
  ]

  with_grant_option = false

}

resource "snowflake_database_grant" "datamart_rw_grant" {
  database_name = "datamart_db"
  privilege      = "USAGE"

  roles = [
    "datamart_rw",
  ]

  with_grant_option = false

}
