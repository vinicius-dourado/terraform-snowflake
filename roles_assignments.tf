resource "snowflake_role_grants" "data_scientist_assign" {
  role_name = "data_scientist_role"

  roles = [
    "ACCOUNTADMIN",
  ]

  users = [
    "joao",
  ]

}

resource "snowflake_role_grants" "integration_r_assign" {
  role_name = "integration_r_role"

  roles = [
    "data_scientist",
  ]

}

