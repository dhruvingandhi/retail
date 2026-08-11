# Random Edit Round 6 #8: Round 6 Scan: Metadata annotation appended.
# Random Edit Round 5 #8: Round 5 Scan: Element definition checked.
# Random Edit Round 4 #8: Round 4 Update: Line annotation updated.
# Random Edit Round 3 #8: Round 3 Review: Operational comments updated.
# Random Edit Round 2 #1: Optimization: LookML structure validated successfully.
# Random Edit #8: Status: Active LookML view configuration.
# Random comment 8: Updated by agent
# The name of this view in Looker is "Brands"
view: brands {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Brands` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Brand ID" in Explore.

  dimension: brand_id {
    type: number
    description: "Unique identifier for each brand"
    sql: ${TABLE}.brand_id ;;
  }

  dimension: brand_name {
    type: string
    description: "Name of the brand"
    sql: ${TABLE}.brand_name ;;
  }

  dimension: country_of_origin {
    type: string
    description: "Country where the brand originated"
    sql: ${TABLE}.country_of_origin ;;
  }

  dimension: created_at {
    type: number
    description: "Timestamp of record creation"
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    description: "Description of the brand"
    sql: ${TABLE}.description ;;
  }

  dimension: founded_year {
    type: number
    description: "Year the brand was founded"
    sql: ${TABLE}.founded_year ;;
  }

  dimension: is_active {
    type: yesno
    description: "Indicates if the brand is currently active"
    sql: ${TABLE}.is_active ;;
  }
#ewdcd
  dimension: logo_url {
    type: string
    description: "URL to the brand's logo image"
    sql: ${TABLE}.logo_url ;;
  }

  dimension: updated_at {
    type: number
    description: "Timestamp of last update"
    sql: ${TABLE}.updated_at ;;
  }

  dimension: website {
    type: string
    description: "Official website of the brand"
    sql: ${TABLE}.website ;;
  }
  measure: count {
    type: count
    drill_fields: [brand_name]
  }
}

# Additional random comment 4: Updated at 2026-08-03T18:31:52Z

# Comment batch edit 8: Updated at 2026-08-03T20:52:00Z
# Comment batch edit again 8: Updated at 2026-08-03T20:52:41Z
