class CreateRecipeGroceries < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_groceries do |t|
      t.references :recipe, foreign_key: true
      t.references :grocery, foreign_key: true

      t.timestamps
    end
  end
end
