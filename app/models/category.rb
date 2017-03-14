class Category < ApplicationRecord
  belongs_to :category_group

  has_many :categories_recipes, dependent: :destroy
  has_many :recipes, through: :categories_recipes
end
