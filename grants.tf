resource "snowflake_warehouse_grant" "access_grant" {
  warehouse_name = "COMPUTE_WH"
  privilege      = "USAGE"

  roles = [
    "raw_full","integration_full","integration_r","datamart_rw",
  ]

}

resource "snowflake_warehouse_grant" "access_grant2" {
  warehouse_name = "COMPUTE_WH"
  privilege      = "MODIFY"

  roles = [
    "raw_full","integration_full","integration_r","datamart_rw",
  ]

}
