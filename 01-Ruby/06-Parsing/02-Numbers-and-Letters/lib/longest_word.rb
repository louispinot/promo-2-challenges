require 'open-uri'
require 'json'

def generate_grid(grid_size)
  letters = ("A".."Z").to_a
  letters << %w(A A E E I U U O O Y)
  letters.flatten!
  grid = []
  grid_size.times {grid << letters.sample}
  grid
end

def run_game(attempt, grid, start_time, end_time)
  attempt.upcase!
  in_grid = true
  attempt.chars.each do |letter|
    in_grid = false unless grid.include? letter
  end


  if in_grid == false
    not_in_the_grid = {score: 0,
      time: end_time - start_time,
      message: "not in the grid",
      translation: nil
    }
    return not_in_the_grid
  else
    return translate(attempt, start_time, end_time)
  end
end

def translate(word, start_time, end_time)

  api_page = open("http://api.wordreference.com/0.8/80143/json/enfr/#{word}").read
  hsh_of_hsh = JSON.parse(api_page)

  if hsh_of_hsh["Error"] != nil
    not_english = { score: 0,
      time: end_time - start_time,
      message: "not an english word",
      translation: nil
    }
    return not_english
  else
    translation = hsh_of_hsh["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"].split(",")[0]
    result = {translation: translation,
      time: end_time - start_time,
      message: "well done"
    }
    result[:score] = compute_score(result[:time].to_i, word)
    return result
  end
end

def compute_score(time, word)
  score = (1+word.length)**2/(time+1)
  score
end






