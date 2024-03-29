connection: "4mile_bigquery"

include: "/views/*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

explore: fruit_basket {}
view: fruit_basket {
  derived_table: {
    sql: select
          'lime' as fruit_type,
          'green' as color,
          'no' as is_round,
          round(cast(0.43 as FLOAT64),2) as price,
          round(cast(2.4  as FLOAT64),2) as price_per_pound,
          round(cast(0.18  as FLOAT64),2) as weight

          union all

          select
          'lime' as fruit_type,
          'green' as color,
          'no' as is_round,
          round(cast(0.41  as FLOAT64),2) as price,
          round(cast(2.4  as FLOAT64),2) as price_per_pound,
          round(cast(0.17  as FLOAT64),2) as weight

          union all

          select
          'apple' as fruit_type,
          'green' as color,
          'yes' as is_round,
          round(cast(0.46  as FLOAT64),2) as price,
          round(cast(1.15  as FLOAT64),2) as price_per_pound,
          round(cast(0.4  as FLOAT64),2) as weight

          union all

          select
          'orange' as fruit_type,
          'orange' as color,
          'yes' as is_round,
          round(cast(0.73  as FLOAT64),2) as price,
          round(cast(1.45  as FLOAT64),2) as price_per_pound,
          round(cast(0.5  as FLOAT64),2) as weight

          union all

          select
          'orange' as fruit_type,
          'orange' as color,
          'yes' as is_round,
          round(cast(0.65  as FLOAT64),2) as price,
          round(cast(1.45  as FLOAT64),2) as price_per_pound,
          round(cast(0.45  as FLOAT64),2) as weight

          union all

          select
          'apple' as fruit_type,
          'red' as color,
          'yes' as is_round,
          round(cast(0.75  as FLOAT64),2) as price,
          round(cast(1.25  as FLOAT64),2) as price_per_pound,
          round(cast(0.6  as FLOAT64),2) as weight

          union all

          select
          'apple' as fruit_type,
          'red' as color,
          'yes' as is_round,
          round(cast(0.69  as FLOAT64),2) as price,
          round(cast(1.25  as FLOAT64),2) as price_per_pound,
          round(cast(0.55  as FLOAT64),2) as weight

          union all

          select
          'banana' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          round(cast(0.53  as FLOAT64),2) as price,
          round(cast(0.75  as FLOAT64),2) as price_per_pound,
          round(cast(0.7  as FLOAT64),2) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          round(cast(0.5  as FLOAT64),2) as price,
          round(cast(2.25  as FLOAT64),2) as price_per_pound,
          round(cast(0.22  as FLOAT64),2) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          round(cast(0.45  as FLOAT64),2) as price,
          round(cast(2.25  as FLOAT64),2) as price_per_pound,
          round(cast(0.2  as FLOAT64),2) as weight

          union all

          select
          'banana' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          round(cast(0.56  as FLOAT64),2) as price,
          round(cast(0.75  as FLOAT64),2) as price_per_pound,
          round(cast(0.75  as FLOAT64),2) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          round(cast(0.43  as FLOAT64),2) as price,
          round(cast(2.25  as FLOAT64),2) as price_per_pound,
          round(cast(0.19  as FLOAT64),2) as weight

          ;;
  }

  dimension: fruit_type {
    type: string
    tags: ["mp_customer_id"]
    sql: ${TABLE}.fruit_type ;;
  }

  dimension: color {
    type: string
    tags: ["mp_twitter"]
    sql: ${TABLE}.color ;;
    html: <a href="https://4mile.io">{{rendered_value}}</a> ;;
  }

  dimension: is_round {
    type: string
    tags: ["mp_user_attribute"]
    sql: ${TABLE}.is_round ;;
  }

  dimension: price_per_pound {
    type: number
    sql: ${TABLE}.price_per_pound ;;
    value_format_name: usd
  }

  dimension: weight {
    type: number
    tags: []
    sql: ${TABLE}.weight ;;
  }

  dimension: price {
    type: number
    tags: []
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }


  measure: average_weight {
    type: average
    tags: []
    value_format_name: decimal_1
    sql: ${weight} ;;
  }

  measure: average_price {
    type: average
    tags: []
    value_format_name: usd
    sql: ${price} ;;
  }
#
#   measure: average_price_green {
#     label: "Average Price of Green Fruit"
#     type: average
#     value_format_name: usd
#     sql: ${price} ;;
#     filters: {
#       field: color
#       value: "green"
#     }
#   }

  measure: total_weight {
    type: sum
    value_format_name: decimal_2
    sql: ${weight} ;;
  }

  measure: total_price {
    type: sum
    value_format_name: usd
    sql: ${price} ;;
  }

  measure: average_price_per_pound {
    type: average
    value_format_name: usd
    sql: ${price_per_pound} ;;
  }

  measure: count_types {
    type: count_distinct
    sql: ${fruit_type} ;;
  }

  measure: count_color {
    type: count_distinct
    sql: ${color} ;;
  }

# Please don't remove or alter this field. Very necessary for BU trainings:
  measure: count {
    type: count
  }

}
