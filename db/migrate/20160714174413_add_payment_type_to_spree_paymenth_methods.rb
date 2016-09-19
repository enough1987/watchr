class AddPaymentTypeToSpreePaymenthMethods < ActiveRecord::Migration
  def change
		add_column :spree_payment_methods, :payment_type, :string
  end
end
