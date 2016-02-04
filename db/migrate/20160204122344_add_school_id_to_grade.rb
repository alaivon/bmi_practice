class AddSchoolIdToGrade < ActiveRecord::Migration
  def change
    add_column :grades, :school_id, :integer
  end
end
