class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :grades, :user_id
  end
end
