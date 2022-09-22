resource snowflake_warehouse_grant grant {
  warehouse_name = "COMPUTE_WH"
  privilege      = "USAGE"

  roles = [
    "etl_role",
  ]

  with_grant_option = false
}
