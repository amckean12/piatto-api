class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :description
  #has_many :recipes, serializer: RecipeIngredientSerializer
end
