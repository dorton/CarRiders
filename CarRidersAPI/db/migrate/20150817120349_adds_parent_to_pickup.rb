class AddsParentToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :parent_id, :integer
  end
end
