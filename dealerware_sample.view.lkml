view: dealerware_sample {
  derived_table: {
    sql: SELECT
        'Land Rover Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'car_make' AS dealerware_oem_metadata_user_attribute_name,
        '''Range Rover'',''Land Rover''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Jaguar Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'car_make' AS dealerware_oem_metadata_user_attribute_name,
        '''Jaguar''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Audi Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'car_make' AS dealerware_oem_metadata_user_attribute_name,
        '''Audi''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'AutoNation Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group' AS dealerware_oem_metadata_user_attribute_name,
        '''Autonation''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Volkswagen Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealership_flag' AS dealerware_oem_metadata_user_attribute_name,
        '''Volkswagen''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Mercedes-Benz Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealership_flag' AS dealerware_oem_metadata_user_attribute_name,
        '''Mercedes-Benz''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        NULL AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'first_of_month' AS dealerware_oem_metadata_user_attribute_name,
        NULL AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Asbury Automotive Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group' AS dealerware_oem_metadata_user_attribute_name,
        '''Asbury''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Penske Automotive Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group_visibility' AS dealerware_oem_metadata_user_attribute_name,
        '''yes''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'All Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        NULL AS dealerware_oem_metadata_url_prod,
        'environment' AS dealerware_oem_metadata_user_attribute_name,
        'devdealerware.looker.com' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Asbury Automotive Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group_visibility' AS dealerware_oem_metadata_user_attribute_name,
        '''yes''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Mercedes-Benz Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'car_make' AS dealerware_oem_metadata_user_attribute_name,
        '''Mercedes-Benz''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Volkswagen Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'car_make' AS dealerware_oem_metadata_user_attribute_name,
        '''Volkswagen''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'AutoNation Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group_visibility' AS dealerware_oem_metadata_user_attribute_name,
        '''yes''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Audi Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealership_flag' AS dealerware_oem_metadata_user_attribute_name,
        '''Audi''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Jaguar Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealership_flag' AS dealerware_oem_metadata_user_attribute_name,
        '''Jaguar''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Land Rover Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealership_flag' AS dealerware_oem_metadata_user_attribute_name,
        '''Range Rover'',''Land Rover''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'Penske Automotive Group' AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'dealer_group' AS dealerware_oem_metadata_user_attribute_name,
        '''Penske''' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        NULL AS dealerware_oem_metadata_oem_dealer_grp_name,
        'https://devdealerware.looker.com/spaces/1' AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'last_of_month' AS dealerware_oem_metadata_user_attribute_name,
        NULL AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time
      UNION ALL
      SELECT
        'All Users' AS dealerware_oem_metadata_oem_dealer_grp_name,
        NULL AS dealerware_oem_metadata_url_dev,
        'https://insights.dealerware.com/spaces/1' AS dealerware_oem_metadata_url_prod,
        'environment' AS dealerware_oem_metadata_user_attribute_name,
        'insights.dealerware.com' AS dealerware_oem_metadata_user_attribute_value,
        1569274125 AS dealerware_oem_metadata_run_time ;;
  }

  ## DIMENSIONS ##

  dimension: dealerware_oem_metadata_oem_dealer_grp_name {
    type: string
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_OEM_DEALER_GRP_NAME" ;;
  }

  dimension: dealerware_oem_metadata_url_dev {
    type: string
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_URL_DEV" ;;
  }

  dimension: dealerware_oem_metadata_url_prod {
    type: string
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_URL_PROD" ;;
  }

  dimension: dealerware_oem_metadata_user_attribute_name {
    type: string
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_USER_ATTRIBUTE_NAME" ;;
  }

  dimension: dealerware_oem_metadata_user_attribute_value {
    type: string
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_USER_ATTRIBUTE_VALUE" ;;
  }

  dimension: dealerware_oem_metadata_run_time {
    type: number
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_RUN_TIME" ;;
  }

  dimension: run_time {
    type: date
    datatype: epoch
    sql: ${TABLE}."DEALERWARE_OEM_METADATA_RUN_TIME" ;;
  }

}
