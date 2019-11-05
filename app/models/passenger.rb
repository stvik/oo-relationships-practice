class Passenger

@@all = []

attr_reader :name

def initialize (name)
    @name = name

    @@all << self

end

def self.all
    @@all
end

def rides
    Ride.all.select {|ride|ride.passenger == self}
end

def drivers
    self.rides.collect {|ride|ride.driver}.uniq
end

def total_distance
    self.rides.sum do |ride| 
        ride.distance      
    end
end

def self.premium_members
    self.all.select do |passenger|
        passenger.total_distance > 100
    end
end

end

