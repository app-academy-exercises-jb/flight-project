class Passenger
    attr_reader :name 

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight_number)
        @flight_numbers.include?(flight_number.upcase) ? true : false
    end

    def add_flight(flight_number)
        if self.has_flight?(flight_number)
            return nil
        else
            @flight_numbers << flight_number.upcase
        end
    end
end
