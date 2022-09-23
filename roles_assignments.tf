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

resource "snowflake_role_grants" "integration_full_assign" {
  role_name = "integration_full"

  roles = [
    "data_engineer_role",
  ]

}

resource "snowflake_role_grants" "datamart_rw_assign" {
  role_name = "datamart_rw"

  roles = [
    "dbt_role",
  ]

}

resource "snowflake_role_grants" "int_r_assign" {
  role_name = "integration_r"

  roles = [
    "data_scientist_role",
  ]

}

resource "snowflake_role_grants" "raw_f_assign" {
  role_name = "raw_full"

  roles = [
    "etl_role",
  ]

}
