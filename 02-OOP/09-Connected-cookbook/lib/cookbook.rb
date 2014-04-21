
require 'CSV'

class Cookbook

  attr_accessor :file, :recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes =[]
    CSV.foreach(@file) do |recipe_array|
      recipe_array.each_index do |i|
        if i == 0
          name = recipe_array[i]
        elsif i == 1
          description = recipe_array[i]
        else
          ingredients[recipe_array[(i-1)]] if i % 2 == 1
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

  def all
    recipe_array = @recipes.map {|recipe| recipe = recipe.to_a}
    recipe_array
  end


end
