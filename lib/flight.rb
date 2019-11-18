class Flight
    attr_reader :passengers
    
    def initialize(flight_number, capacity)
        @flight_number, @capacity = flight_number, capacity
        @passengers = []
    end

    def full?
        @passengers.length >= @capacity
    end

    def board_passenger(passenger)
        if self.full?
            #raise "flight is full"
            return nil
        else
            if passenger.has_flight?(@flight_number)
                @passengers << passenger
            else
                #raise "passenger does not belong on this flight"
                return nil
            end
        end
    end

    def list_passengers
        @passengers.map(&:name)
    end

    def [](idx)
        @passengers[idx]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end
