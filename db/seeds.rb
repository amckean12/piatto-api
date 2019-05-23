# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Had the itch to do meaningless work for an hour should not do it this way

#Delete
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

#Recipe Creation
Recipe.create(name: "Tomato Sauce with Onion Butter", description: "This is the simplest of all sauces to make, and none has a purer, more irresistibly sweet tomato taste. I have known people to skip the pasta and eat the sauce directly out of the pot with a spoon.")
#2
Recipe.create(name: "Tomato Sauce with Olive Oil and Chopped Vegetables", description: "The carrot and celery in this sauce are put in a crudo, which means without the usual seperate and preliminary sauteeing procedure, along with the tomatoes. The sweetness of the carrot and the fragrance of celery contribute depth to the fresh tomato flavor of the sauce.")
#3
Recipe.create(name: "Variation with Rosemary and Pancetta", description: "The basic sauce above, cooked through to the end plus the following")
#4
Recipe.create(name: "Variation with Marjoram and Two Cheeses", description: "The above sauce cooked through to the end, plus the following")
#5
Recipe.create(name: "Tomato Sauce with Sauteed Vegetables and olive Oil", description: "This is a denser, darker sauce that the preceding two, cooked longer over base of sauteed vegetables")
#6
Recipe.create(name: "Tomato Sauce with Garlic and Basil", description: "This is one of many versions of the sauce Romans call alla carrettiera. The carrettieri were the drivers of the mule- or even hand driven carts in which wine and produce were brought down to rome.")
#7
Recipe.create(name: "Black Truffle Sauce", description: "When this recipe was first published, the cost of the ingredients and the powerfully sensual quality of the dish lead me to scale the quantity down to 2 persons. It still seems to me that its pleasures are of the kind that are best savored a due, in the company of just one other. If you'd rather have a crowd, increase the recipe.")
#Ingredient Creation
Ingredient.create(description: "2 pounds fresh, ripe tomatoes") #0
Ingredient.create(description: "1 medium onion, peeled and cut in half") #1
Ingredient.create(description: "5 tablespoons of butter") #2
Ingredient.create(description: "Salt") #3
Ingredient.create(description: "1 to 1.5 pounds of pasta") #4
Ingredient.create(description: "Freshly grated parmigianoreggiano cheese for the table") #5
Ingredient.create(description: "2/3 cup chopped carrot") #6
Ingredient.create(description: "2/3 cup chopped celery") #7
Ingredient.create(description: "2/3 cup chopped onion") #8
Ingredient.create(description: "1/3 cup extra virgin olive oil")#9
Ingredient.create(description: "Marjoram, 2 teaspoons if, fresh, 1 if dried") #10
Ingredient.create(description: "2 tablespoons fresshly grated parmigianoreggiano cheese") #11
Ingredient.create(description: "2 tablespoong freshly grated romano cheese") #12
Ingredient.create(description: "2 teaspoons of extra virgin olive oil")#13
Ingredient.create(description: "2 teaspoons dried Rosemary")#14
Ingredient.create(description: "1/2 cup Pancetta sliced thin and cut into narrow julienne strips") #15
Ingredient.create(description: "1 large bunch of basil") #16
Ingredient.create(description: "5 Garlic cloves, peeled and chopped fine") #17
Ingredient.create(description: "5 tables spoons of extra virgin olive oil") #18
Ingredient.create(description: "Black pepper, ground fresh from the mill") #19
Ingredient.create(description: "1 pound of pasta") #20
Ingredient.create(description: "3 ounces of black truffles") #21
Ingredient.create(description: "1 or 2 garlic cloves") #22
Ingredient.create(description: "3 tablespoons extra virign olive oil") #23
Ingredient.create(description: "1 flat anchovy fillet") #24
Ingredient.create(description: "1/2 pound of pasta") #25



#Join Table
#1
RecipeIngredient.create(recipe_id: 1, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 6)
#2
RecipeIngredient.create(recipe_id: 2, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 7)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 8)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 9)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 10)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 5)
#3
RecipeIngredient.create(recipe_id: 3, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 14)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 15)
#4
RecipeIngredient.create(recipe_id: 4, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 10)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 11)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 12)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 13)

#5
RecipeIngredient.create(recipe_id: 5, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 8)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 24)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 13)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 12)

#6
RecipeIngredient.create(recipe_id: 6, ingredient_id: 9)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 6, ingredient_id: 4)

#7
RecipeIngredient.create(recipe_id: 7, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 25)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 22)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 21)
RecipeIngredient.create(recipe_id: 7, ingredient_id: 20)


#Tags

Tag.create(tag_name: "italian")
Tag.create(tag_name: "pasta")

#Recipe Tag
RecipeTag.create(recipe_id: 1, tag_id: 1)
RecipeTag.create(recipe_id: 1, tag_id: 2)
RecipeTag.create(recipe_id: 2, tag_id: 1)
RecipeTag.create(recipe_id: 3, tag_id: 2)
RecipeTag.create(recipe_id: 4, tag_id: 1)
RecipeTag.create(recipe_id: 5, tag_id: 2)
RecipeTag.create(recipe_id: 5, tag_id: 1)
RecipeTag.create(recipe_id: 6, tag_id: 2)
RecipeTag.create(recipe_id: 7, tag_id: 1)
