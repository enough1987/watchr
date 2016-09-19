class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :brand 
      t.string :model
      t.string :reference
		t.string  :condition
      t.integer :year
      t.string :content
      t.text :comment
      t.string :period
		t.integer :user_id
      t.string :session_upload
      t.timestamps null: false

    end
  end
end
