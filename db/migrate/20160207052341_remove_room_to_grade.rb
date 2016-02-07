class RemoveRoomToGrade < ActiveRecord::Migration
  def change
    remove_column :grades, :room, :string
  end
end
