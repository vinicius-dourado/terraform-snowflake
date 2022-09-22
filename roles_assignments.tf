resource "snowflake_role_grants" "etl_role_assign" {
  role_name = "etl_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "etl",
  ]

}
