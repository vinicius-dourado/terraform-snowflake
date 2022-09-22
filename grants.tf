resource "snowflake_warehouse_grant" "etl_role_grant" {
  warehouse_name = "COMPUTE_WH"
  privilege      = "MODIFY"

  roles = [
    "etl_role",
  ]

  with_grant_option = false

}
