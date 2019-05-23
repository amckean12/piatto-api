class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :ingredients, serializer: RecipeIngredientSerializer
end
