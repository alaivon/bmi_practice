class AddCreatedOnToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :created_on, :date
    add_column :schools, :update_on, :date
  end
end
