# Users ---------------------------------------->
user1 = User.create(
  email: 'sponge@bob.com',
  password: '123456',
  first_name: 'Sponge',
  last_name: 'Bob',
  )
user1.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574676603/SpongeBob_stock_art_wxxisz.png'
user1.save

user2 = User.create(
  email: 'noah@nash.com',
  password: '123456',
  first_name: 'Noah',
  last_name: 'Nash',
  )
user2.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574845946/Users/NoahNash_pco64j.jpg'
user2.save

user3 = User.create(
  email: 'levy@henry.com',
  password: '123456',
  first_name: 'Levy',
  last_name: 'Henry',
  )
user3.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574846398/Users/LevyHenry_kk3qiu.jpg'
user3.save

user4 = User.create(
  email: 'angelica@sharpe.com',
  password: '123456',
  first_name: 'Angelica',
  last_name: 'Sharpe',
  )
user4.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574846572/Users/AngelicaSharpe_qbhwxl.jpg'
user4.save

user5 = User.create(
  email: 'sue@wheatley.com',
  password: '123456',
  first_name: 'Sue',
  last_name: 'Wheatley',
  )
user5.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574846763/Users/SueWheatley_pph8dj.jpg'
user5.save

user6 = User.create(
  email: 'jaime@barclay.com',
  password: '123456',
  first_name: 'Jaime',
  last_name: 'Barclay',
  )
user6.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574847385/Users/JaimeBarclay_k38twq.jpg'
user6.save

user7 = User.create(
  email: 'johnny@elwood.com',
  password: '123456',
  first_name: 'Johnny',
  last_name: 'Elwood',
  )
user7.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574847497/Users/JohnnyElwood_gcklgm.jpg'
user7.save

user8 = User.create(
  email: 'veronica@charlton.com',
  password: '123456',
  first_name: 'Veronica',
  last_name: 'Charlton',
  )
user8.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574847739/Users/VeronicaCharlton_fodp6t.jpg'
user8.save

user9 = User.create(
  email: 'david@sellam.com',
  password: '123456',
  first_name: 'David',
  last_name: 'Sellam',
  )
user9.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574850625/Users/DavidSellam_ohqipz.jpg'
user9.save

# Listings & Reviews -------------------------------->

# ======================== Couchtown ========================== #
listing = Listing.create(
  title: 'Couchtown',
  category: 'couch',
  price: '20',
  address: 'King George St 17, Tel Aviv-Yafo, Israel',
  user: user2,
  description: "Couchtown is a great place to take a nap in the afternoon. We have a great couch in our office and I nap on it all the time. You'll love the wonderful amenities and wake up refreshed and ready to get back to your day!"
  )
listing.remote_photo_url = "https://images.unsplash.com/photo-1484101403633-562f891dc89a"
listing.save

# Couchtown Reviews
review = Review.create(
  title: 'Comfy Couch!',
  content: "I took a nap here in the middle of a busy day and it was very comfy and Noah was a great host",
  rating: 4,
  listing_id: 1,
  user: user6
  )

review = Review.create(
  title: 'Couch not that great',
  content: "The couch was too stiff for my back. Noah was a good host, but I didn't have a very good nap. Will not nap here again.",
  rating: 2,
  listing_id: 1,
  user: user7
  )

# ======================== Yogaslavia ========================== #

listing = Listing.create(
  title: 'Yogaslavia',
  category: 'yoga mat',
  price: '15',
  address: 'Dov Hoz St 1, Tel Aviv-Yafo, Israel',
  user: user6,
  description: "Yogaslavia is a privately run yoga studio and a great place to meditate or nap and recharge your essence. We have a very calm atmosphere and you can really center yourself here before returning to your busy day."
  )
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574677740/yoga-mat1_vv5mdf.jpg'
listing.save

# Yogaslavia Reviews
review = Review.create(
  title: 'So peaceful!',
  content: "I came to Yogaslavia for a quick nap after a tough morning and Jaime was such a gracious host. She made me feel so comfortable in such a short amount of time. I will definitely be back for another nap.",
  rating: 5,
  listing_id: 2,
  user: user4
  )

review = Review.create(
  title: 'Namaste',
  content: "I woke up from my nap totally refreshed and ready to go back to work. Jaime went to great lengths to make sure I had everything I needed. Highly recommend.",
  rating: 5,
  listing_id: 2,
  user: user2
  )

review = Review.create(
  title: 'Overrated',
  content: "I came because of all the great reviews, but did not have a very good nap. The mat was too thin and you could hear the street noise through the window.",
  rating: 3,
  listing_id: 2,
  user: user7
  )

# ======================== Pitch-a-Tent ========================== #

listing = Listing.create(
  title: 'Pitch-a-Tent',
  category: 'tent',
  price: '10',
  address: 'Allenby St 28, Tel Aviv-Yafo, Israel',
  user: user4,
  description: "Pitch-a-Tent tent emporium rents tents for any amount of time. If you need a quick snooze in one of our floor models, come on by!"
  )
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686643/tent1_vgerdq.jpg'
listing.save

# Pitch-a-tent Reviews
review = Review.create(
  title: 'Overrated',
  content: "Took a pretty good nap here, was interrupted when they had to show off the tent to someone who wanted to buy it but otherwise pretty comfy and good host. Will be back.",
  rating: 4,
  listing_id: 3,
  user: user1
  )

# ======================== Office Breakroom ========================== #

listing = Listing.create(
  title: 'Office Breakroom',
  category: 'couch',
  price: '20',
  address: 'King Geoge St. 97, Tel Aviv-Yafo, Israel',
  user: user3,
  description: 'Our office breakroom is a great place for a "nap". Come get comfortable...'
  )
listing.remote_photo_url = 'https://i.imgur.com/W6d64x7.jpg'
listing.save

review = Review.create(
  title: 'Creepy Vibes',
  content: "Had a terrible nap and couldn't help but feel like I was being watched the whole time. Will never nap here again.",
  rating: 1,
  listing_id: 4,
  user: user5
  )

review = Review.create(
  title: 'Weird Stains',
  content: "The couch smelled terrible and had some weird stains on it. The host was very creepy and kept making suggestive comments.",
  rating: 2,
  listing_id: 4,
  user: user6
  )

# ======================== Backyard ========================== #

listing = Listing.create(
  title: 'Backyard',
  category: 'tent',
  price: '10',
  address: 'HaYarkon St 228, Tel Aviv-Yafo, Israel',
  user: user8,
  description: "I have a tent in my backyard you can nap in if you need."
  )
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574686768/tent2_otwaht.jpg'
listing.save

# Backyard Reviews
review = Review.create(
  title: 'Fine for what I needed',
  content: "Had a decent nap, the host wasn't very accommodating, but it was decent for the price.",
  rating: 3,
  listing_id: 5,
  user: user2
  )

review = Review.create(
  title: 'Pretty good!',
  content: "I stopped by for a nap in the afternoon and was pleasantly surprised by the quality of the tent, especially for the price.",
  rating: 4,
  listing_id: 5,
  user: user3
  )

# ======================== Le Wagon ========================== #

listing = Listing.create(
  title: 'Le Wagon',
  category: 'couch',
  price: '5',
  address: 'Ben Yehuda 32, Tel Aviv, Israel',
  user: user9,
  description: "We have a couch here at Le Wagon, you can use it if you want."
  )
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688332/PHOTO-2019-11-25-15-23-49_bkclz3.jpg'
listing.save

# Le Wagon Reviews

review = Review.create(
  title: 'I nap here all the time',
  content: "Le Wagon's bootcamp is exhausting and I need a lot of naps to get through the day. The couch here is pretty comfortable, but it doesn't matter because I'm so tired anyway.",
  rating: 4,
  listing_id: 6,
  user: user2
  )

review = Review.create(
  title: 'Pretty good!',
  content: "I stopped by for a nap in the afternoon and was pleasantly surprised by the quality of the couch, especially for the price.",
  rating: 4,
  listing_id: 6,
  user: user3
  )

# ======================== Grandma's House ========================== #

listing = Listing.create(
  title: "Grandma's living room",
  category: 'couch',
  price: '15',
  address: 'Sderot Nordau 63, Tel Aviv-Yafo, Israel',
  user: user8,
  description: "I've got a cozy couch in my living room you can stay on. The place is very comfortable, and it will be nice to have some company."
  )
listing.remote_photo_url = 'https://images.unsplash.com/photo-1571037549062-9d2430443eff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1002&q=80'
listing.save

# Grandma's House Reviews

review = Review.create(
  title: 'Host just wants someone to talk to',
  content: "The couch was not very comfortable and the host was trying to talk to me the whole time I was trying to sleep.",
  rating: 2,
  listing_id: 7,
  user: user4
  )

review = Review.create(
  title: 'So sweet',
  content: "The host was very sweet and we wound up talking the whole time instead of napping, but still had a great time!",
  rating: 4,
  listing_id: 7,
  user: user5
  )

# ======================== Toga Yoga ========================== #

listing = Listing.create(
  title: 'Toga Yoga',
  category: 'yoga mat',
  price: '15',
  address: 'Yehuda HaMakkabbi St 4א, Tel Aviv-Yafo, Israel',
  user: user5,
  description: "This is a Toga themed Yoga studio and bathhouse. You can take a nap or even sit in the sauna. Great place to stop by and relax."
  )
listing.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574688131/yoga-studio_g3munt.jpg'
listing.save

review = Review.create(
  title: 'Great space!',
  content: "Had a wonderful nap here. The host was very welcoming and I had a great nap.",
  rating: 4,
  listing_id: 8,
  user: user6
  )

# ======================== Zen Retreat ========================== #

listing = Listing.create(
  title: 'Zen Retreat',
  category: 'yoga mat',
  price: '30',
  address: 'HaYarkon St 22, Tel Aviv-Yafo, Israel',
  user: user5,
  description: "We are a beachside yoga resort, where you can stop by to recharge and refresh. Whether you want to take a quick nap or a long one, our mats are very comfortable and we pride ourselves on a very tranquil atmosphere."
  )
listing.remote_photo_url = 'https://images.unsplash.com/photo-1571945192246-4fcee13c27b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'
listing.save

review = Review.create(
  title: 'Overpriced',
  content: "Was very comfortable, but nothing special for the price, will look for other options.",
  rating: 3,
  listing_id: 9,
  user: user7
  )

# ======================== Apartment Hallway ========================== #

listing = Listing.create(
  title: 'Apartment hallway',
  category: 'couch',
  price: '5',
  address: 'Pinsker St 30, Tel Aviv-Yafo, Israel',
  user: user1,
  description: "There's a couch in my apartment complex hallway. It's not great, but you could certainly stop by for a quick nap if you need."
  )
listing.remote_photo_url = 'https://images.unsplash.com/photo-1574036629647-30479498f4f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80'
listing.save

review = Review.create(
  title: 'I got bed bugs',
  content: "Horribly uncomfortable and dirty. Could not sleep at all and then went home with bedbugs. GROSS!",
  rating: 1,
  listing_id: 9,
  user: user2
  )

