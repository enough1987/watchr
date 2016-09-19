class AddFullAdressToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :full_adress, :string
  end
end
