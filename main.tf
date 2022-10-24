terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }

  backend "remote" {
    organization = "vtad"

    workspaces {
      name = "snowflake"
    }
  }
}

module "roles" {
  source = "./roles"
  for_each = {for name, comment in var.listofroles: name => comment}
  name = each.value.name
  comment = each.value.comment
}

module "assignments" {
  source = "./assignments"
  for_each = {for name, roles in var.listofassignments: name => roles}
  role_name = each.value.name
  roles = each.value.roles
}

module "warehouse_grants" {
  source = "./warehouse_grants"
  for_each = {for warehouse_name, roles in var.warehouse_grants: warehouse_name => roles}
  warehouse_name = each.value.warehouse_name
  privilege = each.value.privilege
  roles = each.value.roles
  with_grant_option = each.value.with_grant_option
}

module "database_grants" {
  source = "./database_grants"
  for_each = {for database_name, roles in var.database_grants: database_name => roles}
  database_name = each.value.database_name
  privilege = each.value.privilege
  roles = each.value.roles
  with_grant_option = each.value.with_grant_option
}

module "schema_grants" {
  source = "./schema_grants"
  for_each = {for database_name, roles in var.schema_grants: database_name => roles}
  database_name = each.value.database_name
  privilege = each.value.privilege
  roles = each.value.roles
  on_future = each.value.on_future
  with_grant_option = each.value.with_grant_option
}

module "table_grants" {
  source = "./table_grants"
  for_each = {for database_name, roles in var.table_grants: database_name => roles}
  database_name = each.value.database_name
  schema_name = each.value.schema_name
  privilege = each.value.privilege
  roles = each.value.roles
  on_future = each.value.on_future
  with_grant_option = each.value.with_grant_option
}
