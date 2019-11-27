# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Bobo',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '333-45555556',
    category:  'french',
  },
  {
    name:         'Mamo',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '333-80396498',
    category:     'chinese'
  },
  {
    name:         'Lolo',
    address:      'NES St. 6, Maronn',
    phone_number: '333-12312332',
    category:     'italian'
  },
  {
    name:         'Cavallo',
    address:      'Stige St. 2, Hell',
    phone_number: '333-16278342',
    category:     'belgian'
  },
  {
    name:         'Coriandolo',
    address:      'Piazza Venezia, 2',
    phone_number: '333-12344321',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
