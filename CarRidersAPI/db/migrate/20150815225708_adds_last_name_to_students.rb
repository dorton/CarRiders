class AddsLastNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :last_name, :string
    rename_column :students, :name, :first_name
  end
end
