view: carriers {
  sql_table_name: public.carriers ;;

  dimension: code {
    primary_key: yes
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: code_with_html {
    type: string
    sql: ${TABLE}.code ;;
    html: <a href="www.4mile.io">{{value}}</a> ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  measure: count {
    type: count
    drill_fields: [name, nickname]
  }
}
