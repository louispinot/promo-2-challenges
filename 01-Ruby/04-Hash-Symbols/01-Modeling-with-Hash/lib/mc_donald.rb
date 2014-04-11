CALORIES_TABLE = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

MENUS = {
    "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
    "Best Of Big Mac" => ["Big Mac", "French fries", "Coca"],
    "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]
  }


def menu_calories_counter(composition) # composition : array
  sum = 0
  composition.each {|item| sum += CALORIES_TABLE[item]}
  sum
end

menu_calories = {}
MENUS.each do |menu, items|
  menu_calories[menu] = menu_calories_counter(items)
end

CALORIES_TABLE.merge!(menu_calories)


def poor_calories_counter(burger, side, beverage)
  meal = [burger, side, beverage]
  sum = 0
  meal.each {|item| sum += CALORIES_TABLE[item]}
  sum
end


def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  order = []
  orders.each {|item| order << item}
  sum = 0
  order.each {|item| sum += CALORIES_TABLE[item]}
  sum
end

