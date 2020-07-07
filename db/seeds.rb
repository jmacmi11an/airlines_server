# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Flight.destroy_all
f1 = Flight.create :number => 'QF10', :origin => 'sydney', :destination => 'brisbane', :date => 30072020, :plane_id => 2
f2 = Flight.create :number => 'QF10', :origin => 'sydney', :destination => 'brisbane', :date => 30072020, :plane_id => 3
f3 = Flight.create :number => 'QF10', :origin => 'sydney', :destination => 'brisbane', :date => 30072020, :plane_id => 4
