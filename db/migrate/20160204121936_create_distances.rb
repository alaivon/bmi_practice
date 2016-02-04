class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.string :name
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
