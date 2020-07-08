# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#-------Seed Data-------------------

Flight.destroy_all
f1 = Flight.create :number => 'QN01', :origin => 'Sydney', :destination => 'Brisbane', :date => '2020/07/29', :airplane_id => 1
f2 = Flight.create :number => 'QN02', :origin => 'Sydney', :destination => 'Melbourne', :date => '2020/07/30', :airplane_id => 2
f3 = Flight.create :number => 'QN03', :origin => 'Sydney', :destination => 'Adelaide', :date => '2020/07/31', :airplane_id => 3
puts "#{ Flight.count } Flights created"

Airplane.destroy_all
a1 = Airplane.create :name => 'SAAB 340', :rows => 10, :columns => 4
a2 = Airplane.create :name => 'Westwind 1124', :rows => 10, :columns => 4
a3 = Airplane.create :name => 'King Air B200C', :rows => 10, :columns => 4
puts "#{ Airplane.count } Airplanes created"

Reservation.destroy_all
r1 = Reservation.create :seat => 'A1'
r2 = Reservation.create :seat => 'A2'
r3 = Reservation.create :seat => 'A3'
r4 = Reservation.create :seat => 'A4'
puts "#{ Reservation.count } reservations created"

User.destroy_all
u1 = User.create :name => 'John-o', :email => 'john@john.com', :password => 'chicken'
u2 = User.create :name => 'Jim-o', :email => 'jim@jim.com', :password => 'chicken'
u3 = User.create :name => 'Blake-o', :email => 'blake@blake.com', :password => 'chicken'
puts "#{ User.count } users created"

#--------associations -----------------

a1.flights << f1
a2.flights << f2
a3.flights << f3

f1.reservations << r1
f2.reservations << r2
f3.reservations << r3
f1.reservations << r4

u1.reservations << r1
u2.reservations << r2
u3.reservations << r3
u1.reservations << r4
