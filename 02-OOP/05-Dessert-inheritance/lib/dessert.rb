class Dessert
  attr_reader :name, :calories
  def initialize(name, calories)
    @name = name
    @cal = calories
  end

  def healthy?
    if @cal < 200
      true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert

  attr_reader :flavor

  def initialize(name, calories, flavor)
    @name = name
    @cal = calories
    @flavor = flavor
  end

  def delicious?
    if flavor == "black licorice"
      false
    else
      true
    end
  end
end