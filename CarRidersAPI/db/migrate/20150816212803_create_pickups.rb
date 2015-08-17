class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.boolean :current_pickup
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
