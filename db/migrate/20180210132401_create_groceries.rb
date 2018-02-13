class CreateGroceries < ActiveRecord::Migration[5.1]
  def change
    create_table :groceries do |t|
      t.string :name
      t.integer :price
      t.integer :rare
      t.timestamps
    end
  end
end
