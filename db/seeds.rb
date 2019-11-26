# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Listing.destroy_all
user = User.create(email: 'sponge@bob.com', password: '123456', first_name: 'Sponge', last_name: 'Bob', photo: 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574676603/SpongeBob_stock_art_wxxisz.png')

listing = Listing.create(title: 'Couchtown', category: 'couch', price: '30', address: 'King George St 17, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = "https://images.unsplash.com/photo-1484101403633-562f891dc89a"
listing.save

listing = Listing.create(title: 'Yogaslavia', category: 'yoga mat', price: '10', address: 'Dov Hoz St 1, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574677740/yoga-mat1_vv5mdf.jpg'
listing.save

listing = Listing.create(title: 'Pitch-a-Tent', category: 'tent', price: '15', address: 'Allenby St 28, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686643/tent1_vgerdq.jpg'
listing.save

listing = Listing.create(title: 'Office Breakroom', category: 'couch', price: '20', address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://i.imgur.com/W6d64x7.jpg'
listing.save

listing = Listing.create(title: 'Backyard', category: 'tent', price: '20', address: 'HaYarkon St 228, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686768/tent2_otwaht.jpg'
listing.save

listing = Listing.create(title: 'Le Wagon', category: 'couch', price: '15', address: 'Ben Yehuda 32, Tel Aviv, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688332/PHOTO-2019-11-25-15-23-49_bkclz3.jpg'
listing.save

listing = Listing.create(title: "Grandma's living room", category: 'couch', price: '20', address: 'Sderot Nordau 63, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://images.unsplash.com/photo-1571037549062-9d2430443eff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1002&q=80'
listing.save

listing = Listing.create(title: 'Toga Yoga', category: 'yoga mat', price: '10', address: 'Yehuda HaMakkabbi St 4א, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688131/yoga-studio_g3munt.jpg'
listing.save

listing = Listing.create(title: 'Zen Retreat', category: 'yoga mat', price: '20', address: 'HaYarkon St 22, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://images.unsplash.com/photo-1571945192246-4fcee13c27b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'
listing.save

listing = Listing.create(title: 'Apartment hallway', category: 'couch', price: '25', address: 'Pinsker St 30, Tel Aviv-Yafo, Israel', user: user, description: Faker::Lorem.paragraph_by_chars)
listing.remote_photo_url = 'https://images.unsplash.com/photo-1574036629647-30479498f4f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80'
listing.save

review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 1, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 2, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 3, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 4, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 5, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 6, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 7, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 8, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 10, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 9, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 3, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 4, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 5, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 6, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 7, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 8, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 1, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 2, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 3, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 4, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 5, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 6, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 7, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 8, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 10, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 9, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 3, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 4, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 5, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 6, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 7, user: user)
review = Review.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph_by_chars, rating: rand(1..5), listing_id: 8, user: user)
