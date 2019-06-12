class TagSerializer < ActiveModel::Serializer
  attributes :id
  has_many :recipes, serializer: TagRecipeSerializer
  #has_many :ingredients, serializer: RecipeIngredientSerializer
end
