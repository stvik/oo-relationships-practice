require 'bundler/setup'
Bundler.require
require 'pry'
require_all 'app'

sara = Passenger.new('Sara')
trevor = Passenger.new('Trevor')

paul = Driver.new('Paul')
chine = Driver.new('Chine')

ride1 = Ride.new(sara,paul,12.0)
ride2 = Ride.new(sara,paul,20.0)
ride3 = Ride.new(sara,paul,80.0)
ride4 = Ride.new(trevor,paul,12.0)
ride5 = Ride.new(trevor,paul,12.0)
ride6 = Ride.new(trevor,paul,12.0)

binding.pry
0
