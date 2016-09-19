class AddCounriesToSpreeUser < ActiveRecord::Migration
  def change
	 add_column :spree_users, :countries_id, :integer
    add_column :spree_users, :state_id, :integer
  end
end
