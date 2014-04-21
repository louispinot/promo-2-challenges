require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

url = 'http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise'
doc = Nokogiri::HTML(open(url))

parsed_recipes = []
doc.search('.m_search_result').each do |element|
    name = element.search('.m_search_titre_recette > a').inner_text
    description = element.search('.m_search_result_part4').inner_text
    description = description[15..-26]
    recipe = Recipe.new (name: name, description: description, ingredients: {})
    parsed_recipes << recipe
  end
end

