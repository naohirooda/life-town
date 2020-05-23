class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :type, null: false
      t.string :name, null: false
      t.text :image, null:false
      t.text :url
      t.text :comment, null: false
      t.timestamps
    end
  end
end
