# Random Edit Round 6 #11: Round 6 Audit: Standard definition header added.
# Random Edit Round 5 #11: Round 5 Review: Verification pass logged.
# Random Edit Round 3 #11: Round 3 Update: Additional field annotation added.
# Random Edit Round 2 #4: Revision: Additional description added for reporting transparency.
# Random Edit #11: Update: Field definitions aligned with schema.
# Random comment 11: Updated by agent
# The name of this view in Looker is "Categories"
view: categories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Categories` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    description: "Unique identifier for each category"
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    description: "Name of the category"
    sql: ${TABLE}.category_name ;;
  }

  dimension: description {
    type: string
    description: "Detailed description of the category"
    sql: ${TABLE}.description ;;
  }

  dimension: parent_category_id {
    type: number
    description: "ID of the parent category, allowing for hierarchical structure"
    sql: ${TABLE}.parent_category_id ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name]
  }
}

# Additional random comment 7: Updated at 2026-08-03T18:31:52Z

# Comment batch edit 11: Updated at 2026-08-03T20:52:00Z
# Comment batch edit again 11: Updated at 2026-08-03T20:52:41Z
