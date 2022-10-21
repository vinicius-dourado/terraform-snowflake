resource "snowflake_role_grants" "raw_f_assign" {
  role_name = "raw_full"

  roles = [
    "ACCOUNTADMIN","fivetran_role",
  ]

}

resource "snowflake_role_grants" "fivetran_role_assign" {
  role_name = "fivetran_role"

  users = [
    "fivetran_user",
  ]

}
