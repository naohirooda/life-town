class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :kind, null: false
      t.string :name, null: false
      t.text :url
      t.text :memo, null: false
      t.text :image
      t.timestamps
    end
  end
end
