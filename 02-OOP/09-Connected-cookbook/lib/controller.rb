
require_relative 'cookbook'
class Controller
  attr_accessor :file
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @file = file
    @cookbook = Cookbook.new(@file)
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
  def add(args = {})
    @cookbook.create(args)
  end

  def delete(index)
    @cookbook.destroy(index)
  end

  def list
    @cookbook.all
  end

end

