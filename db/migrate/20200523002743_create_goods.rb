class CreateGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :goods do |t|
    
      t.timestamps
    end
  end
end
