class UpdateBasicInfoToSpreeProducts < ActiveRecord::Migration
  def change
  change_column :spree_products, :basic_info, :text

  end
end
