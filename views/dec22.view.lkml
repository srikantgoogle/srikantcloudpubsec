view: dec22 {
  sql_table_name: `usda.dec22`
    ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.Billing_account_ID ;;
  }

  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.Billing_account_name ;;
  }

  dimension: cost____ {
    type: number
    sql: ${TABLE}.Cost____ ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.Cost_type ;;
  }

  dimension: credit_type {
    type: string
    sql: ${TABLE}.Credit_type ;;
  }

  dimension: project_hierarchy {
    type: string
    sql: ${TABLE}.Project_hierarchy ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.Project_ID ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_name ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.Service_description ;;
  }

  dimension: service_id {
    type: string
    sql: ${TABLE}.Service_ID ;;
  }

  dimension: sku_description {
    type: string
    sql: ${TABLE}.SKU_description ;;
  }

  dimension: sku_id {
    type: string
    sql: ${TABLE}.SKU_ID ;;
  }

  dimension: string_field_17 {
    type: string
    sql: ${TABLE}.string_field_17 ;;
  }

  dimension: unrounded_cost____ {
    type: number
    sql: ${TABLE}.Unrounded_Cost____ ;;
  }

  dimension: usage_amount {
    type: number
    sql: ${TABLE}.Usage_amount ;;
  }

  dimension_group: usage_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Usage_end_date ;;
  }

  dimension_group: usage_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Usage_start_date ;;
  }

  dimension: usage_unit {
    type: string
    sql: ${TABLE}.Usage_unit ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_account_name, project_name]
  }

  measure: total_spent_cost {
    type: sum
    sql: ${cost____} ;;
    value_format: "$#.00;($#.00)"

  }
}
