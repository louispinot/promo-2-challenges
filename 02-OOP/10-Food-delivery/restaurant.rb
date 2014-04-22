require_relative "manager"

class Restaurant

    attr_reader :manager, :name
    attr_accessor :employees, :customers, :orders

    def initialize(name, manager)
        @name = name
        @manager = manager
        @employees = []
        @manager.restaurant = self
        @customers = []
        @orders = []
    end

    def orders_by_employee(employee)
        orders_of_employee = []
        @orders.each do |order|
        orders_of_employee << order if order.delivery_guy == employee
      end
      orders_of_employee
    end

end

