class Recipe

  attr_accessor :ingredients, :name, :description

  def initialize(args = {name: "", description: "", ingredients: {}})
    @name = args[:name]
    @ingredients = args[:ingredients]
    @description = args[:description]
  end

  def to_a
    recipe_to_array = [@name, @description]
    @ingredients.each do |ingredient, quantity|
      recipe_to_array << ingredient
      recipe_to_array << quantity
    end
    recipe_to_array
  end
end


# tourte = Recipe.new ({name: "tourte au boeuf", description: 'Miam', ingredients: {beurre: "150g", boeuf: '200g'}})
# p tourte.name
# p tourte.description
# p tourte.ingredients

# p tourte.to_a

# tourte.name = "tourte a la viande"
# tourte. description = "Fat!!"

# p tourte.to_a







