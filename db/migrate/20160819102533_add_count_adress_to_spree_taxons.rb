class AddCountAdressToSpreeTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :count, :string
  end
end
