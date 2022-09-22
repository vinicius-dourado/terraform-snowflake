resource "snowflake_role_grants" "raw_full_assign" {
  role_name = "raw_full"

  roles = [
    "ACCOUNTADMIN",
    "data_engineer_role",
  ]

}
