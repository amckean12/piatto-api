class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :ingredients

  def ingredients
    self.object.ingredients.map do |ingredient|
      {id: ingredient.id,
       description: ingredient.description
      }
    end
  end
end
