
require 'CSV'
require_relative 'recipe'

class Cookbook

  attr_accessor :file, :recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes =[]
    CSV.foreach(@file) do |recipe_array|
      name, description, ingredients = "", "", {}
      recipe_array.each_index do |i|
        if i == 0
          name = recipe_array[i]
        elsif i == 1
          description = recipe_array[i]
        else
          ingredients[recipe_array[(i-1)]] = recipe_array[i] if i % 2 == 1
        end
      end
      recipe = Recipe.new({name: name, description: description, ingredients: ingredients})
      @recipes << recipe
    end
  end

  def create(args)
    new_recipe = Recipe.new(args)
    @recipes << new_recipe
    save(@recipes)
  end

 def destroy(index)
    @recipes.delete_at(index)
    save(@recipes)
  end

  def save(recipes)
    CSV.open(@file, 'wb') do |csv|
      recipes.each do |recipe|
        recipe_to_array = recipe.to_a
        csv << recipe_to_array
      end
    end
  end

  def call(index)
    @recipes[index]
  end

  def all
    recipe_array = @recipes.map do |recipe|
      recipe.to_a
    end
    recipe_array
  end
end


# my_book = Cookbook.new('lib/recipes.csv')
# my_book.create({name: "tourte au boeuf", description: 'Miam', ingredients: {beurre: "150g", boeuf: '200g'}})
# my_book.create({name: "tarte aux fraises", description: 'delicious', ingredients: {fraises: "300g", farine: '200g'}})

# p my_book.all





