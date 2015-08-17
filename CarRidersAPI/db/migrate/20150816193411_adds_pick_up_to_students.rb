class AddsPickUpToStudents < ActiveRecord::Migration
  def change
    add_column :students, :pickup, :boolean
  end
end
