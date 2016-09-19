# This migration comes from spree_products_import (originally 20151207113044)
class CreateSpreeProductImports < ActiveRecord::Migration
  def change
    create_table :spree_product_imports do |t|
      t.attachment :variants_csv
      t.attachment :products_csv

      t.timestamps null: false
    end
  end
end
