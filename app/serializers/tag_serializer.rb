class TagSerializer < ActiveModel::Serializer
  attributes :id
  has_many :recipes, serializer: TagRecipeSerializer
end
