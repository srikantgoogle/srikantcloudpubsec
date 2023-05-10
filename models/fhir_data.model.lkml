connection: "mpv-looker-mpv-bq"

# include all the views
include: "/views/**/*.view"

datagroup: fhir_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fhir_data_default_datagroup

explore: patients_with_conditions_and_medications {}

explore: patient_vital_info {}
