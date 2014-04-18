require_relative 'cookbook'

class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @file = file
    @cookbook = Cookbook.new(@file)
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
  def add(name)
    @cookbook.add_recipe(name)
  end

  def delete(index)
    @cookbook.delete_recipe(index)
  end

  def list
    @cookbook.list_recipes
  end

end

