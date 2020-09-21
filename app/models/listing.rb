class Listing
    
    attr_reader :city

    @@all = []
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map {|t| t.guest}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        all.select do |list|
            list.city == city
        end
    end

    def self.most_popular
        all.max_by {|list| list.trip_count}
    end


end
