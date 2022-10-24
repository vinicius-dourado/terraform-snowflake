################################
##        ROLES CREATION      ##
################################
listofroles = [
    {
        name = "RAW_FULL"
        comment = "access role which give full permission on RAW database to those assineg to it"
    },    
    {
        name = "RAW_R"
        comment = "access role which give read only permission on RAW database to those assigned to it"
    },
    {
        name = "RAW_RW"
        comment = "access role which give read and write permission on RAW database to those assigned to it"
    },
    {
        name = "ANALYTICS_FULL"
        comment = "access role which give full permission on ANALYTICS database to those assineg to it"
    },
    {
        name = "ANALYTICS_R"
        comment = "access role which give read only permission on ANALYTICS database to those assigned to it"
    }, 
    {
        name = "ANALYTICS_RW"
        comment = "access role which give read and write permission on ANALYTICS database to those assigned to it"
    },  
    {
        name = "SHOPIFY_WEBHOOKS_RW"
        comment = "access role which give read and write permission on shopify_webhooks_rw schema in RAW database to those assigned to it"
    },
    {
        name = "SALESOPS_R"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },  
    {
        name = "FIVETRAN_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },     
    {
        name = "DATA_ENGINEER_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "DATA_SCIENTIST_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "ANALYTICS_ENGINEER_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "SALES_OPS_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "BUSINESS_ANALYST_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "DBT_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },   
    {
        name = "REPORTER_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },
    {
        name = "MODELBIT_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },                                         
    {
        name = "RUDDER_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },     
    {
        name = "RUDDER_EVENTS_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    },     
    {
        name = "SHOPIFY_WEBHOOKS_ROLE"
        comment = "access role which give read and write permission on sales_ops schemas in ANALYTICS database to those assigned to it"
    }        
]

################################
##       ROLES ASSIGNMENT     ##
################################

listofassignments = [
    {
        name = "SHOPIFY_WEBHOOKS_RW"
        roles = ["ACCOUNTADMIN","SHOPIFY_WEBHOOKS_ROLE"]
    },    
    {
        name = "RAW_FULL"
        roles = ["ACCOUNTADMIN","FIVETRAN_ROLE","DATA_ENGINEER_ROLE"]
    },  
    {
        name = "RAW_R"
        roles = ["ACCOUNTADMIN","DBT_ROLE","DATA_SCIENTIST_ROLE"]
    },  
    {
        name = "ANALYTICS_FULL"
        roles = ["ACCOUNTADMIN","DBT_ROLE","DATA_ENGINEER_ROLE"]
    },  
    {
        name = "ANALYTICS_R"
        roles = ["ACCOUNTADMIN","RUDDER_ROLE","DATA_SCIENTIST_ROLE","BUSINESS_ANALYST_ROLE","REPORTER_ROLE","MODELBIT_ROLE"]
    },  
    {
        name = "SALESOPS_R"
        roles = ["ACCOUNTADMIN","SALES_OPS_ROLE"]
    }                        
]

warehouse_grants = [
     {
        warehouse_name = "REPORTING"
        privilege = "USAGE"
        roles = ["ACCOUNTADMIN","SHOPIFY_WEBHOOKS_ROLE"]
        with_grant_option = false
    },
    {
        warehouse_name = "TRANSFORMING"
        privilege = "USAGE"
        roles = ["DBT_ROLE","DATA_SCIENTIST_ROLE","DATA_ENGINEER_ROLE","ANALYTICS_ENGINEER_ROLE"]
        with_grant_option = false
    },    
    {
        warehouse_name = "LOADING"
        privilege = "USAGE"
        roles = ["FIVETRAN_ROLE","DATA_ENGINEER_ROLE","SHOPIFY_WEBHOOKS_ROLE"]
        with_grant_option = false
    },   
    {
        warehouse_name = "UNLOADING"
        privilege = "USAGE"
        roles = ["RUDDER_ROLE","DATA_ENGINEER_ROLE"]
        with_grant_option = false
    }    
]

database_grants = [
     {
        database_name = "RAW_DB"
        privilege = ["USAGE","CREATE SCHEMA", "MODIFY"]
        roles = ["RAW_FULL"]
        with_grant_option = false
    }
]

schema_grants = [
     {
        database_name = "RAW_DB"
        privilege = ["USAGE"]
        roles = ["ANALYTICS_R"]
        on_future         = true
        with_grant_option = false
    }
]


table_grants = [
     {
        database_name = "RAW_DB"
        schema_name = null
        privilege = ["SELECT"]
        roles = ["RAW_R"]
        on_future         = true
        with_grant_option = false
    },
     {
        database_name = "RAW_DB"
        schema_name = "SHOPIFY_WEBHOOKS"
        privilege = ["SELECT", "UPDATE", "INSERT", "UPDATE"]
        roles = ["SHOPIFY_WEBHOOKS_RW"]
        on_future         = true
        with_grant_option = false
    },  
     {
        database_name = "ANALYTICS_DB"
        schema_name = null
        privilege = ["SELECT"]
        roles = ["ANALYTICS_R"]
        on_future         = true
        with_grant_option = false
    },        
]
