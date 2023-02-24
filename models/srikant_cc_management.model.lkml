connection: "srikant-vpcsc-bq"

# include all the views
include: "/views/**/*.view"

datagroup: srikant_cc_management_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: srikant_cc_management_default_datagroup

explore: dec22 {}

explore: nov22 {}

explore: jan23 {}

explore: gcp_billing_export {}
