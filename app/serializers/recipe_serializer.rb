class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :ingredients, serializer: RecipeIngredientSerializer
  has_many :tags, serializer: RecipeTagSerializer
end
