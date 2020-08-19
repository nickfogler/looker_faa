connection: "partnerred_flightstats"
include: "/**/*.view"
include: "*.dashboard"

## DATAGROUPS ##

#  test comment - Spencer Taylor sudoing as random user
datagroup: default_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
}

persist_with: default_datagroup

access_grant: four_mile_company {
  user_attribute: company_id
  allowed_values: [ "4Mile" ]
}
access_grant: analytics_department {
  user_attribute: department_id
  allowed_values: [ "Analytics" ]
}

## EXPLORES ##

explore: dealerware_sample {}

explore: airports {}

explore: aircraft {
  fields: [ALL_FIELDS*, -aircraft.total_miles_flown]
}

# explore: sample_email_list {}

explore: flights { # Second portion of below clause dependent on internal company users having company_id user attribute set to 0.
#   access_filter: {
#     field: aircraft_flight_facts.tail_num
#     user_attribute: company_id
#   }
  description: "Start here for information about flights!"
  join: carriers {
    type: left_outer
    sql_on: ${flights.carrier} = ${carriers.code} ;;
    relationship: many_to_one
  }

  join: aircraft {
    type: left_outer
    sql_on: ${flights.tail_num} = ${aircraft.tail_num} ;;
    relationship: many_to_one
  }

  join: aircraft_flight_facts {
    view_label: "Aircraft"
    type: left_outer
    sql_on: ${aircraft.tail_num} = ${aircraft_flight_facts.tail_num} ;;
    relationship: one_to_one
  }

  join: aircraft_models {
    sql_on: aircraft. = ${aircraft_models.aircraft_model_code} ;;
    relationship: many_to_one
  }

  }
