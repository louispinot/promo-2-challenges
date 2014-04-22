class UI_Manager

    MANAGER_TASKS = {
        list:       "1° List customers[list]",
        customer:   "2° Add customer [customer]",
        view:       "3° View orders [view]",
        order:      "4° New order [order]",
        employees:  "5° List employees [employees]",
        remove:     "6° Remove order [remove]",
        exit:       "7° Log out [exit]"
         }

    def initialize(restaurant, manager)
        @restaurant = restaurant
        @manager = manager
        @running = true
    end

    def order
        puts "Name of customer"
        customer = gets.chomp
        @manager.add_order(customer)
    end

    def list
        @restaurant.customers.each do |customer|
        puts customer.to_s
        end
    end

    def employees
        @restaurant.employees.each do |employee|
        puts employee.to_s
        end
    end

    def customer
        puts "Name of customer"
        name = gets.chomp
        puts "Address of customer"
        address = gets.chomp
        puts "Phone number of customer"
        phone = gets.chomp
        @manager.add_customer(name, address, phone)
    end

    def view
        @restaurant.orders.each_with_index do |order, i|
            puts "Order n°#{i+1} : #{order.to_s}"
        end
    end

    def remove

    end

    def exit
        @running = false
    end

    def display
        puts "Welcome #{@manager.to_s}, you are logged in as MANAGER"

        while @running
            puts"\n"
            puts "What do you want to do?"
            puts MANAGER_TASKS.values
            puts"\n"
            dispatch(gets.chomp)
            puts"\n"
        end
    end

    def dispatch(task)
        self.send(task.to_sym)
    end


end
