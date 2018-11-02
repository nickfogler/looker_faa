explore: test_dynamnic {}
view: test_dynamnic {
  derived_table: {
    sql: select 'hello world' as greeting ;;
  }

  dimension: greeting {
    label: "{{ _view._name }}: Greeting"
  }

  # dimension: greeting_with_value_label {
  #   label: "{{ value }}: Greeting"

  # }


}
