class AddCurrencyToSpreePaymenthMethods < ActiveRecord::Migration
  def change
		add_column :spree_payment_methods, :currency_id, :integer
		add_column :spree_payment_methods, :currency, :string
  end
end
