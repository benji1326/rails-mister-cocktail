# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end



Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "mango")
Cocktail.create(name: "Bloody Marry")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Espresso Martini")
Cocktail.create(name: "Black Russian")
Cocktail.create(name: "Frisky Bison")
Cocktail.create(name: "Virgin Marry")
Cocktail.create(name: "Long Island")
Cocktail.create(name: "Summer Punch")
Cocktail.create(name: "Dry Martini")
Cocktail.create(name: "Black Russian")
Cocktail.create(name: "Caipirinha")
Cocktail.create(name: "Strawberry Daiquiri")

puts 'finished ingredients'
