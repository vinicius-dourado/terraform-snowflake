resource snowflake_database_grant grant {
  database_name = "integration_db"

  privilege = "USAGE"
  roles     = ["integration_r"]

}
