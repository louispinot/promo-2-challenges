# MEALS = {
#   reine: 10,
#   marguerite: 9,
#   chorizo: 12,
#   calzone: 11,
#   sicilienne: 8
# }

class Order
    attr_accessor :delivery_guy, :statut

    def initialize(customer)
        @statut = "pending"
        @customer = customer
        @delivery_guy = nil
        add_meals
    end

    def to_s
        "client: #{@customer}; #{delivery_guy}; statut : #{@statut}; order : #{@meals}"
    end

    def add_meals

        @meals = []
        answer = nil

        until answer == ""
            puts "Please enter your meal"
            answer = gets.chomp
            unless answer == ""
                raise "we don't have this meal" if (MEALS.has_key? answer.to_sym) == false
                @meals << answer.to_sym
            end
        end
    end

end

#neworder = Order.new("jean-pierre")

# new_order = Orders.new("Jean-Pierre Grau")
