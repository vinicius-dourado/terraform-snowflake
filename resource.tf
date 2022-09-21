resource snowflake_user user {
  name         = "inventa"
  login_name   = "invante"
  comment      = "A user of snowflake."
  password     = "secret"
  disabled     = false
  display_name = "Snowflake User"
  email        = "user@snowflake.example"
  first_name   = "Snowflake"
  last_name    = "User"

  default_warehouse = "DEFAULT_WH"
  default_role      = "PUBLIC"


  must_change_password = false
}
