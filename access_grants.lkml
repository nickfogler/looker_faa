access_grant: test_separate_file {
  allowed_values: ["1000,2000"]
  user_attribute: ad_account
}


access_grant: sales_manager {
  allowed_values: ["yes"]
  user_attribute: can_see_entire_team
}

access_grant: can_see_financial_data {
  allowed_values: ["yes"]
  user_attribute: financial_data_access
}
