class recipe

  attr_accessor :ingredients, :name, :description

  def initialize(name)
    @name = name
    @ingredients = ingredients
    @description = description
  end

  def to_a
    name = @name
    ingredients = @ingredients
    description = @description
    recipe_to_array = [name, description]
    ingredients.each do |ingredient, quantity|
      recipe_to_array << ingredients
      recipe_to_array << quantity
    end
    recipe_to_array
  end
end
















