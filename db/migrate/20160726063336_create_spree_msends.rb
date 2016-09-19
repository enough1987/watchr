class CreateSpreeMsends < ActiveRecord::Migration
  def change
   create_table :spree_msends do |t|
     t.string :email
     t.string :name
     t.string :last_name
     t.text :message
     t.string :phone
     t.timestamps null: false
    end
  end
end
