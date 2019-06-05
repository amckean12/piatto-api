class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipe_tags
  has_many :ingredients, :through => :recipe_ingredients
  has_many :tags, :through => :recipe_tags

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :tags  
end
