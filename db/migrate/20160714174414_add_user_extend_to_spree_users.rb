class AddUserExtendToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :name, :string
    add_column :spree_users, :last_name, :string
    add_column :spree_users, :adres, :string
    add_column :spree_users, :country, :string
	 add_column :spree_users, :city, :string
	 add_column :spree_users, :phone, :string
  end
end
