# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'sponge@bob.com', password: '123456', first_name: 'Sponge', last_name: 'Bob')

Listing.create(title: 'Couchtown', category: 'couch', price: '30', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Yogaslavia', category: 'yoga mat', price: '10', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Pitch-a-Tent', category: 'tent', price: '15', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Office Breakroom', category: 'couch', price: '20', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Backyard', category: 'tent', price: '20', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Le Wagon', category: 'couch', price: '15', address: Faker::Address.street_address, user: user)
Listing.create(title: "Grandma's living room", category: 'couch', price: '20', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Toga Yoga', category: 'yoga mat', price: '10', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Zen Retreat', category: 'yoga mat', price: '20', address: Faker::Address.street_address, user: user)
Listing.create(title: 'Apartment hallway', category: 'couch', price: '25', address: Faker::Address.street_address, user: user)
