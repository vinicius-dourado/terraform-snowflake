resource "snowflake_role_grants" "etl_role_assign" {
  role_name = "etl_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "etl",
  ]

}

resource "snowflake_role_grants" "data_engineer_assign" {
  role_name = "data_engineer_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "gabriel",
  ]

}

resource "snowflake_role_grants" "data_scientist_assign" {
  role_name = "data_scientist_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "joao",
  ]

}

resource "snowflake_role_grants" "dbt_role_assign" {
  role_name = "dbt_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "dbt",
  ]

}
