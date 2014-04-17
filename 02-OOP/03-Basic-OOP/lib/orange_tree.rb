class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_reader :age, :height, :fruits_on_tree, :dead

  def initialize
    @age = 0
    p 'An Orange tree has been planted'
  end

  def one_year_passes!
    if @dead == false
      @age +=1
      @height +=1 if age <=10

      new_production

      ####################
      ## test for death ##
      fate = rand
      @dead = true if fate < (( @age.to_i**2 / 5000 ) - ( @age.to_i / 100 ))
      ######################
    else
      p "the villagers think nostalgically about the tree"
    end
  end

  def new_production
    @production = 100 if [5, 6, 7, 8, 9].include? @age
    @production = 200 if [10, 11, 12, 13, 14, 15].include? @age
    @fruits_on_tree = @production
  end

  def pick_a_fruit!
    @fruits_on_tree.to_i -= 1 if @fruits_on_tree.to_i > 0
  end

  def dead?
    @dead
  end

  def fruits
    return @fruits_on_tree
  end

end
