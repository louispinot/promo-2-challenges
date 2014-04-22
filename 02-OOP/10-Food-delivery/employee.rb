class Employee

    attr_reader :name, :password

    def initialize(name, password)
        @name = name
        @password = password
        @type = "DELIVERY GUY"
    end

    def id_array
        [@name, @password]
    end

    def to_s
        @name.capitalize
    end

end