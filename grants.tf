resource snowflake_database_grant grant {
  database_name = "integration_db"

  privilege = "USAGE"
  roles     = ["etl_role",]

  with_grant_option = false
}
