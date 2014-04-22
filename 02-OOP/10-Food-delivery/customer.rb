class Customer

    attr_reader :customer_name, :customer_address, :customer_phone

    def initialize(customer_name, customer_address, customer_phone)
        @customer_name = customer_name
        @customer_address = customer_address
        @customer_phone = customer_phone
    end

    def customer_order

    end

    def to_s
        "#{@customer_name}, #{@customer_address}, #{@customer_phone}"
    end

end