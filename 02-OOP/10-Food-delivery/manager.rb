require_relative 'restaurant'
require_relative 'customer'
require_relative 'employee'
require_relative 'order'

class Manager

    attr_accessor :restaurant
    attr_reader :password, :name

    def initialize(name, password)
        @name = name
        @password = password
        @type = "MANAGER"
    end

    def add_employee(name, password)
        employee = Employee.new(name, password)
        restaurant.employees << employee
        employee
    end

    def add_order(customer)
        new_order = Order.new(customer)
        new_order.delivery_guy = restaurant.employees.sample
        restaurant.orders << new_order

    end

    def add_customer(name, address, phone)
        customer = Customer.new(name, address, phone)
        restaurant.customers << customer
        customer
    end

    def id_array
        [@name, @password]
    end

    def to_s
        @name.capitalize
    end

end