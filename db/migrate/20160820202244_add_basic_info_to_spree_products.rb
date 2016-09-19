class AddBasicInfoToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :basic_info, :string
  end
end
