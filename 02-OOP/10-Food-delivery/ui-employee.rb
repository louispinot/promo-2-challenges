class UI_Employee

    EMPLOYEE_TASKS = {
        view:       "- View orders [view]",
        complete:   "- Complete order [complete]",
        exit:       "- Log out [exit]"
    }

    def initialize(restaurant, user)
        @restaurant = restaurant
        @user = user
        @running = true
    end

    def display
        puts "Welcome #{@user.to_s}, you are logged in as EMPLOYEE"

        while @running

            puts"\n"

            puts "What do you want to do?"
            puts EMPLOYEE_TASKS.values
            puts"\n"

            dispatch(gets.chomp)

            puts"\n"

        end
    end

    def dispatch(task)
        self.send(task.to_sym)
    end


    def view
        @restaurant.orders_by_employee(@user).each_with_index do |order, i|
            puts "order n°#{i+1} : #{order.to_s}"
        end
    end

    def complete
        puts "which order status do you want to update?"
        index = gets.chomp.to_i
        order_to_update = @restaurant.orders_by_employee(@user).at(index-1)
        order_to_update.statut = "complete"
    end

    def exit
        @running = false
    end

end
