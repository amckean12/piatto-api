class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipe_tags
  has_many :ingredients, :through => :recipe_ingredients
  has_many :tags, :through => :recipe_tags

  accepts_nested_attributes_for :ingredients, :tags, allow_destroy: true,  reject_if: lambda { |a| a[:content].blank? }
end
