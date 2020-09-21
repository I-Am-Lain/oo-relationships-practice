require_relative "listing.rb"
require_relative "guest.rb"


class Trip
    attr_reader :listing, :guest

    @@all = []
    
    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end


end


my_listing = Listing.new("Chicago")
my_other_listing = Listing.new("Chicago")
listing3 = Listing.new("Seattle")
puts my_listing
guest1 = Guest.new("Will")
guest2 = Guest.new("Keifer")
guest3 = Guest.new("meekel")
guest4 = Guest.new("colin")
puts guest1.name
trip1 = Trip.new(my_listing, guest1)
trip2 = Trip.new(my_listing, guest2)
trip3 = Trip.new(listing3, guest3)
puts my_listing.guests
puts my_listing.trip_count
puts Listing.find_all_by_city("Chicago")
puts "------------------"
puts listing3.trip_count
puts my_listing.trip_count
puts Listing.most_popular
puts "---------------"
puts guest1.listings
trip4 = Trip.new(listing3, guest1)
puts guest1.listings
puts Guest.pro_traveler
trip5 = Trip.new(my_other_listing, guest2)
puts "-----------------"
puts Guest.pro_traveler
puts "???????????????/"
puts Guest.find_all_by_name("Keifer")
Guest.new("Keifer")
puts Guest.find_all_by_name("Keifer")