# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'sponge@bob.com', password: '123456', first_name: 'Sponge', last_name: 'Bob', photo: 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574676603/SpongeBob_stock_art_wxxisz.png')

url = "https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574677911/office-couch_obsotk.jpg"
listing = Listing.create(title: 'Couchtown', category: 'couch', price: '30', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574677740/yoga-mat1_vv5mdf.jpg'
listing = Listing.create(title: 'Yogaslavia', category: 'yoga mat', price: '10', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686643/tent1_vgerdq.jpg'
listing = Listing.create(title: 'Pitch-a-Tent', category: 'tent', price: '15', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574677833/casting-couch_t0f3mt.jpg'
listing = Listing.create(title: 'Office Breakroom', category: 'couch', price: '20', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686768/tent2_otwaht.jpg'
listing = Listing.create(title: 'Backyard', category: 'tent', price: '20', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688332/PHOTO-2019-11-25-15-23-49_bkclz3.jpg'
listing = Listing.create(title: 'Le Wagon', category: 'couch', price: '15', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688029/grandmas-couch_yeic45.jpg'
listing = Listing.create(title: "Grandma's living room", category: 'couch', price: '20', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688131/yoga-studio_g3munt.jpg'
listing = Listing.create(title: 'Toga Yoga', category: 'yoga mat', price: '10', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688201/yoga-studio-2_qku0zo.jpg'
listing = Listing.create(title: 'Zen Retreat', category: 'yoga mat', price: '20', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save

url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688310/hallway-couch_pguojh.jpg'
listing = Listing.create(title: 'Apartment hallway', category: 'couch', price: '25', address: Faker::Address.street_address, user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = url
listing.save
