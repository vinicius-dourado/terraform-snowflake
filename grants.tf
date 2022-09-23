resource "snowflake_warehouse_grant" "access_grant" {
  warehouse_name = "COMPUTE_WH"
  privilege      = "USAGE"

  roles = [
    "raw_full","integration_full","integration_r","datamart_rw",
  ]

  with_grant_option = false
  
}

resource "snowflake_database_grant" "datamart_grant" {
  database_name = "DATAMART_DB"
  privilege      = "CREATE SCHEMA"

  roles = [
    "datamart_rw",
  ]

  on_future         = false
  with_grant_option = false

}

resource "snowflake_schema_grant" "datamart_schema_grant" {
  database_name = "DATAMART_DB"

  roles = [
    "datamart_rw",
  ]

  on_future         = true
  with_grant_option = false

}
