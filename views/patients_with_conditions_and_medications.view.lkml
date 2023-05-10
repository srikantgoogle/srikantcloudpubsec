view: patients_with_conditions_and_medications {
  sql_table_name: `fhir_20k_patient_analytics.PatientsWithConditionsAndMedications`
    ;;

  dimension: condition_code {
    type: string
    sql: ${TABLE}.condition_code ;;
  }

  dimension: condition_desc {
    type: string
    sql: ${TABLE}.condition_desc ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.Lastname ;;
  }

  dimension: med_count {
    type: number
    sql: ${TABLE}.med_count ;;
  }

  dimension: num_patients {
    type: number
    sql: ${TABLE}.num_patients ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patientId ;;
  }

  measure: number_of_patients {
    type: count
    drill_fields: [lastname]
  }
  measure: count {
    type: count
    drill_fields: [lastname]
  }
}
