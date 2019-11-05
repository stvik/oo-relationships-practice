class Ride

@@all = []
attr_accessor :passenger, :driver, :distance

def initialize(passenger, driver, distance)
    
    @passenger = passenger
    @driver = driver
    @distance = distance

    @@all << self

end

def self.all
    @@all
end

def self.total_distance
    self.all.sum do |ride|
        ride.distance
    end
end
def self.average_distance
    self.total_distance/self.all.length
end

end