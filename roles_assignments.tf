resource "snowflake_role_grants" "raw_full_assign" {
  role_name = "raw_full"

  roles = [
    "ACCOUNTADMIN",
    "data_engineer_role",
  ]

}

resource "snowflake_role_grants" "integration_r_assign" {
  role_name = "integration_r"

  roles = [
    "ACCOUNTADMIN",
    "data_scientist_role",
    "dbt_role",
  ]

}
