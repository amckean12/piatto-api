# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(name: "Tomato Sauce with Onion Butter", description: "This is the simplest of all sauces to make, and none has a purer, more irresistibly sweet tomato taste. I have known people to skip the pasta and eat the sauce directly out of the pot with a spoon.")
Ingredient.create(description: "2 pounds fresh, ripe tomatoes") #0
Ingredient.create(description: "1 medium onion, peeled and cut in half") #1
Ingredient.create(description: "5 tablespoons of butter") #2
Ingredient.create(description: "Salt") #3
Ingredient.create(description: "1 to 1.5 pounds of pasta") #4
Ingredient.create(description: "Freshly grated parmigianoreggiano cheese for the table") #5

RecipeIngredient.create(recipe_id: 0, ingredient_id: 0)
RecipeIngredient.create(recipe_id: 0, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 0, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 0, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 0, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 0, ingredient_id: 5)
