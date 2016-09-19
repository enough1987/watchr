class AddSashaEbetemozgiToSpreeUser < ActiveRecord::Migration
  def change
	 add_column :spree_users, :adres2, :string
    add_column :spree_users, :house, :string
    add_column :spree_users, :postcode, :string



  end
end
