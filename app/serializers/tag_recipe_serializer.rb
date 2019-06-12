class TagRecipeSerializer < ActiveModel::Serializer
  attributes :name, :description, :ingredients
end
