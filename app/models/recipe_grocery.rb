class RecipeGrocery < ApplicationRecord
  belongs_to :recipe
  belongs_to :grocery
end
