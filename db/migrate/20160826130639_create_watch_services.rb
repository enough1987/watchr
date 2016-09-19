class CreateWatchServices < ActiveRecord::Migration
  def change
    create_table :watch_services do |t|
      t.string :brand
      t.string :email
      t.string :model
      t.string :name
      t.string :phone
      t.string :polishing
      t.string :reference
      t.string :repair
      t.string :revision
      t.string :wristband
      t.string :servicing

      t.timestamps null: false
    end
  end
end
