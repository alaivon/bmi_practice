class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :number
      t.string :name
      t.date :birth
      t.float :height
      t.float :weight
      t.float :bmi
      t.integer :grade_id
      t.string :gender

      t.timestamps null: false
    end
  end
end
