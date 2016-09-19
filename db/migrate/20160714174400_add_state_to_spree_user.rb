class AddStateToSpreeUser < ActiveRecord::Migration
  def change
		add_column :spree_users, :state, :string
  end
end
