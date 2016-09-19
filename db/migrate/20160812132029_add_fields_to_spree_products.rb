class AddFieldsToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :case_size, :string
    add_column :spree_products, :gemstone, :string
    add_column :spree_products, :year, :integer
    add_column :spree_products, :new, :boolean
    add_column :spree_products, :box, :boolean
    add_column :spree_products, :papers, :boolean
  end
end
