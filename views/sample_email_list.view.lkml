view: sample_email_list {
  derived_table: {
    sql:
      SELECT
        'jb@4mile.io' AS email
      UNION ALL
      SELECT
        'jb+1@4mile.io' AS email
      UNION ALL
        'jb+2@4mile.io' AS email ;;
  }

  ## DIMENSIONS ##

  dimension: user_email {
    type: string
    sql: ${TABLE}.email ;;
  }

}
