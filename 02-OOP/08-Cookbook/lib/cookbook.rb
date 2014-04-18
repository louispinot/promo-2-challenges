require 'CSV'
require 'pry'

class Cookbook

attr_accessor :file, :cookbook_recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @cookbook_recipes =[]
    CSV.foreach(@file) do |recipe|
      @cookbook_recipes << recipe[0]
    end
  end

  def add_recipe(name)
    @cookbook_recipes << name
    save
    # CSV.open(@file, 'a') do |csv|
    #   csv << [name]
    end
  end

  def delete_recipe(index)
    @cookbook_recipes.delete_at(index)
    save
    # CSV.open(@file, 'wb') do |csv|
    #   @cookbook_recipes.each do |element|
    #     csv << [element]
    #   end
    # end
  end

  def list_recipes
    @cookbook_recipes
  end

  def save
    CSV.open(@file, 'wb') do |csv|
      @cookbook_recipes.each do |element|
        csv << [element]
      end
    end

end
# binding.pry
# book = Cookbook.new('./recipes.csv')
# p book.add_recipe('tarte aux pommes')
# p book.delete_recipe('Crumpets')
# p book.list_recipes


  # And don't forget to use this save method when you have to modify something in your recipes array.
  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
