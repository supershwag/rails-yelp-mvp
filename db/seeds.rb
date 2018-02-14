# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le restaurant de Celine Dion',
    address:      '34B rue Raymond Marcheron, 92170 Vanves',
    phone_number: '+ 33 6 42 86 65 19',
    category:     'french'
  },
  {
    name:         'Le restaurant de Florence & The Machine',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+ 44 20 7420 9324',
    category:     'italian'
  },
  {
    name:         'Le restaurant de Michel Dodalinger',
    address:      '260 Avenue Daumesnil',
    phone_number: '+ 33 6 64 50 88 29',
    category:     'japanese'
}
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
