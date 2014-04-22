require_relative 'employee'
require_relative 'order'
require_relative 'manager'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'ui-manager'
require_relative 'ui-employee'

require 'highline/import'

MEALS = {
  reine: 10,
  marguerite: 9,
  chorizo: 12,
  calzone: 11,
  sicilienne: 8
}

melanie = Manager.new("melanie", "1234")
my_restaurant = Restaurant.new("Chez Jean-Louis Tournaud", melanie)

jose = melanie.add_employee("jose", "0000")
john = melanie.add_employee("john", "1111")

cust1 = melanie.add_customer('Gabriel Perron', "12 rue de sevres, Paris", "0123456789")
cust2 = melanie.add_customer('Sebastien Medard', "24 rue Chalmers, Paris", "0123789689")
cust3 = melanie.add_customer('Boris Paillard', "6 rue du Petit Musc", "0123780789")

# new_order1 = Order.new("Jean-Pierre Grau")
# new_order2 = Order.new("louis pinot")
# new_order3 = Order.new("alex Tournaud")
# new_order4 = Order.new("bob paillard")

###########################################

while true

    puts "Welcome Chez Jean-Louis Tournaud!"
    puts "--------------------------------"

    puts "Please enter your username!"
    username = gets.chomp

    password = ask("Enter your password: ") { |q| q.echo = "*" }

    id = [username, password]

    user = nil
    my_restaurant.employees.each do |employee|
      user = employee if id == employee.id_array
    end

    if id == melanie.id_array
        ui = UI_Manager.new(my_restaurant, melanie)
        ui.display
    elsif user != nil
        ui = UI_Employee.new(my_restaurant, user)
        ui.display
    else
        puts "login error"
    end

end






