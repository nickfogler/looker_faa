connection: "partnerred_flightstats"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

explore: fruit_basket {}
view: fruit_basket {
  derived_table: {
    sql: select
          'lime' as fruit_type,
          'green' as color,
          'no' as is_round,
          cast(0.43 as real) as price,
          cast(2.4  as real) as price_per_pound,
          cast(0.18  as real) as weight

          union all

          select
          'lime' as fruit_type,
          'green' as color,
          'no' as is_round,
          cast(0.41  as real) as price,
          cast(2.4  as real) as price_per_pound,
          cast(0.17  as real) as weight

          union all

          select
          'apple' as fruit_type,
          'green' as color,
          'yes' as is_round,
          cast(0.46  as real) as price,
          cast(1.15  as real) as price_per_pound,
          cast(0.4  as real) as weight

          union all

          select
          'orange' as fruit_type,
          'orange' as color,
          'yes' as is_round,
          cast(0.73  as real) as price,
          cast(1.45  as real) as price_per_pound,
          cast(0.5  as real) as weight

          union all

          select
          'orange' as fruit_type,
          'orange' as color,
          'yes' as is_round,
          cast(0.65  as real) as price,
          cast(1.45  as real) as price_per_pound,
          cast(0.45  as real) as weight

          union all

          select
          'apple' as fruit_type,
          'red' as color,
          'yes' as is_round,
          cast(0.75  as real) as price,
          cast(1.25  as real) as price_per_pound,
          cast(0.6  as real) as weight

          union all

          select
          'apple' as fruit_type,
          'red' as color,
          'yes' as is_round,
          cast(0.69  as real) as price,
          cast(1.25  as real) as price_per_pound,
          cast(0.55  as real) as weight

          union all

          select
          'banana' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          cast(0.53  as real) as price,
          cast(0.75  as real) as price_per_pound,
          cast(0.7  as real) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          cast(0.5  as real) as price,
          cast(2.25  as real) as price_per_pound,
          cast(0.22  as real) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          cast(0.45  as real) as price,
          cast(2.25  as real) as price_per_pound,
          cast(0.2  as real) as weight

          union all

          select
          'banana' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          cast(0.56  as real) as price,
          cast(0.75  as real) as price_per_pound,
          cast(0.75  as real) as weight

          union all

          select
          'lemon' as fruit_type,
          'yellow' as color,
          'no' as is_round,
          cast(0.43  as real) as price,
          cast(2.25  as real) as price_per_pound,
          cast(0.19  as real) as weight

          ;;
  }

  dimension: fruit_type {
    type: string
    sql: ${TABLE}.fruit_type ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: is_round {
    type: string
    sql: ${TABLE}.is_round ;;
  }

  dimension: price_per_pound {
    type: number
    sql: ${TABLE}.price_per_pound ;;
    value_format_name: usd
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: count {
    type: count
  }

  measure: average_weight {
    type: average
    value_format_name: decimal_2
    sql: ${weight} ;;
  }

  measure: average_price {
    type: average
    value_format_name: usd
    sql: ${price} ;;
  }

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

}
