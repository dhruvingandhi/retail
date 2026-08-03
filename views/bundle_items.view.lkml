# Random Edit Round 6 #9: Round 6 Scan: Metadata annotation appended.
# Random Edit Round 5 #9: Round 5 Scan: Element definition checked.
# Random Edit Round 4 #9: Round 4 Update: Line annotation updated.
# Random Edit Round 3 #9: Round 3 Scan: Structural definition verified.
# Random Edit Round 2 #2: Audit: Round 2 field metadata comment updated.
# Random Edit #9: Status: Active LookML view configuration.
# Random comment 9: Updated by agent
view: bundle_items {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.BundleItems` ;;

  dimension: bundle_id {
    type: number
    description: "Foreign key referencing the ProductBundles table"
    sql: ${TABLE}.bundle_id ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the Products table"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: quantity {
    type: number
    description: "Number of this product included in the bundle"
    sql: ${TABLE}.quantity ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name]
  }
}
#terscascas
#efe

# Additional random comment 5: Updated at 2026-08-03T18:31:52Z

# Comment batch edit 9: Updated at 2026-08-03T20:52:00Z
# Comment batch edit again 9: Updated at 2026-08-03T20:52:41Z
