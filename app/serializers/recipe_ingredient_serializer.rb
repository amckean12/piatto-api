class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :description

  #def ingredients
  #  self.object.ingredients.map do |ingredient|
  #    {id: ingredient.id,
  #     description: ingredient.description
  #    }
  #  end
end
