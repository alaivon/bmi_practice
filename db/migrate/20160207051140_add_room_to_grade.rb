class AddRoomToGrade < ActiveRecord::Migration
  def change
    add_column :grades, :room, :string
  end
end
