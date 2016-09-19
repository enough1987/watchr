# This migration comes from spree_mailchimp (originally 20160706162425)
class AddMailchimpOptInToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :mailchimp_opt_in, :boolean, default: false
  end
end
