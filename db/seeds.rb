# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'

# p "destroying users"
# User.destroy_all
# p "users destroyed"

# ### USER ###
# youri = User.create!(first_name: 'Youri', last_name: "MG", email:'youri@email.com', password:'123456')
# youri.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# youri.save!

# audrey = User.create!(first_name: 'Audrey', last_name: "Gonera",  email:'audrey@email.com', password:'123456')
# audrey.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# audrey.save!

# aymeric = User.create!(first_name: 'Aymeric', last_name: "Bonnaud", email:'aymeric@email.com', password:'123456')
# aymeric.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# aymeric.save!
# p "#{User.count} users created"

# guy_proprio = User.create!(first_name: 'Guy', last_name: "Leriche", email:'guy.leriche@gmail.com', password:'guyguy')
# guy_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# guy_proprio.save!

# manuela_proprio = User.create!(first_name: 'Manuela', last_name: "Demane", email:'manu.demane@gmail.com', password:'guyguy')
# manuela_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# manuela_proprio.save!

# ############

# ### HOUSING ###
# p "destroying housings"
# Housing.destroy_all
# p "housings destroyed"

# housing1 = Housing.create!(name:'Cosy appartment La Muette', address:'16 Rue Octave Feuillet, 75116 Paris', description:'On the 2nd floor of a 1958 building, this delightful apartment is furnished (contemporary furniture), featuring a hall, a charming living room opening onto a wide balcony 5 sqm, a separate furnished and equipped kitchen, a shower room with toilet and an alcove bedroom with storage units.', nb_rooms: 2, surface: 30, user: aymeric, category: '', status: '')
# housing1.photo.attach(io: URI.open('https://i.pinimg.com/564x/f5/c4/77/f5c4776883c34365652064dbe7c6c3e8.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing1.save!

# housing2 = Housing.create!(name:'Atypical loft in the Golden Triangle', address:'5 Rue François 1er, 75008 Paris', description:'A short walk from Place François 1er, on the 6th and top floor of a stone building with a lift, this loft has great character and exposed beams, and spans 44m² (474 sq ft) of living space. Featuring a living room, a semi-equipped open-plan kitchen, a bedroom, a shower room with a toilet, two mezzanines (sleeping or storage area, study area). View of the Eiffel Tower.', nb_rooms: 2, surface: 44, user: aymeric, category: '', status: '')
# housing2.photo.attach(io: URI.open('https://i.pinimg.com/564x/79/64/e5/7964e52d466b597e2b8eee427cdce817.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing2.save!

# housing3 = Housing.create!(name:'Trocadero 1 bedroom appartment', address:'11 Avenue Raymond Poincaré, 75116 Paris', description:'On the 6th and top floor of a stone building, this fully refurbished and furnished apartment (1st occupancy after works) features a hall with cupboards, a stunning living room (lounge/dining room) with a fitted and equipped open kitchen, a bedroom with cupboards, and a shower room with a toilet.', nb_rooms: 2, surface: 50, user: aymeric, category: '', status: '')
# housing3.photo.attach(io: URI.open('https://i.pinimg.com/564x/74/d0/8f/74d08fb9906aaaf841513f75cd82634e.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing3.save!

# housing4 = Housing.create!(name:'Furnished duplex Tuileries', address:"9 Rue d'Alger, 75001 Paris", description:'Furnished apartment on the 6th and 7th floors of a magnificent 19th century building (lift up to the 5th floor). This property is composed of a hall, an equipped open kitchen, a living room, a bedroom and a separate toilet on the first level. Bedroom with a shower room and walk-in wardrobe on the second level.', nb_rooms: 3, surface: 54, user: aymeric, category: '', status: '')
# housing4.photo.attach(io: URI.open('https://i.pinimg.com/564x/f4/75/70/f47570e0af3fffa5da86868c1f0640fe.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing4.save!

# housing5 = Housing.create!(name:'Renovated furnished studio Paris 8th', address:'63 Rue la Boétie, 75008 Paris', description:'Located in a secure building overlooking a courtyard, furnished 400 sq. ft. apartment on the 4th floor. It features an entrance with storage space, a main room with a bedroom and living room area plus a mezzanine for storage, a shower room with a toilet, and an equipped kitchen.', nb_rooms: 1, surface: 37.5, user: audrey, category: '', status: '')
# housing5.photo.attach(io: URI.open('https://i.pinimg.com/564x/f7/a0/0a/f7a00ae1d7a2502b84119acab960f4b9.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing5.save!

# housing6 = Housing.create!(name:'Furnished studio Le Marais', address:'5 Rue Rambuteau, 75004 Paris', description:'Furnished studio apartment on the ground floor of a Townhouse, featuring a living room and a shower room. Individual electric heating and hot water.', nb_rooms: 1, surface: 22.6, user: audrey, category: '', status: '')
# housing6.photo.attach(io: URI.open('https://i.pinimg.com/564x/5a/0a/6b/5a0a6b1436d65e4ba7c08fc83d92aad2.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing6.save!

# housing7 = Housing.create!(name:'Bright 2 bedrooms appartement Paris 6th', address:'16 Rue Mabillon, 75006 Paris', description:' At the heart of Saint Germain des Prés, on the 2nd floor of an old building, this 50 m² (538 sq ft) apartment is composed of a spacious lounge/dining room with an equipped open kitchen, a master bedroom with a bathroom and an adjoining toilet, a second bedroom with a shower area, and a separate toilet.', nb_rooms: 3, surface: 49.5, user: audrey, category: '', status: '')
# housing7.photo.attach(io: URI.open('https://i.pinimg.com/564x/b4/c1/6e/b4c16ef9bf56fc26e614d76e6b2624d1.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing7.save!

# housing8 = Housing.create!(name:'Unfurnished appartment with balconies', address:'196 Rue de Grenelle, 75007 Paris', description:'Unfurnished 82.2m² (882 sq ft) apartment on the 7th floor with a lift. Composed of a hall, a lounge opening out onto a balcony, a fitted and semi-equipped kitchen (hot plates, oven, fridge/freeze), one bathroom, a separate toilet, and two bedrooms leading onto a balcony. Parking space and cellar.', nb_rooms: 3, surface: 82.2, user: audrey, category: '', status: '')
# housing8.photo.attach(io: URI.open('https://i.pinimg.com/564x/4a/3e/96/4a3e96f8127705b38e06350b49108162.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing8.save!

# housing9 = Housing.create!(name:'Luxury furnished 2-room appartment', address:'61 Rue des Saints-Pères, 75006 Paris', description:'On the 4th floor of a beautiful old building with a lift, this 42.60m² (458 sq ft) furnished apartment entirely overlooks a charming courtyard and features a lounge with an open fitted and equipped kitchen, a bedroom with storage space, and a bathroom room with a toilet. High-end. Quiet. Facing south.', nb_rooms: 2, surface: 42.6, user: youri, category: '', status: '')
# housing9.photo.attach(io: URI.open('https://i.pinimg.com/564x/af/7f/9d/af7f9d93f0c1075fc8fb6e5500dc3f20.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing9.save!

# housing10 = Housing.create!(name:'Paris 7th appartement with terraces', address:'101 Rue du Bac, 75007 Paris', description:'Stunning 86.40m² (962 sq ft) furnished apartment on the ground floor opening out onto two terraces, on a private street The property features a hall, a living room, a dining room, a separate kitchen, two bedrooms, a bathroom and a separate toilet. Exceptional location.', nb_rooms: 4, surface: 86.4, user: youri, category: '', status: '')
# housing10.photo.attach(io: URI.open('https://i.pinimg.com/564x/e6/26/87/e62687feea6bc46a905b5a1ce37ce9a2.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing10.save!

# housing11 = Housing.create!(name:'Furnished family appartment Turenne', address:'61 Rue de Bretagne, 75003 Paris', description:'Fully-furnished and renovated apartment on the 3rd floor of a very well-maintained building with an attractive wooded courtyard. Featuring: a hall, a vast living room, two bedrooms, a fitted and equipped kitchen, a bedroom, a laundry area, a bathroom (bath and shower), and a guest toilet. Dual-aspect apartment with reception rooms and great volumes, quiet and bright surroundings.', nb_rooms: 3, surface: 142.9, user: youri, category: '', status: '')
# housing11.photo.attach(io: URI.open('https://i.pinimg.com/564x/82/3e/ee/823eee77043a53dcbcfca31fd61a803a.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing11.save!

# housing12 = Housing.create!(name:'6-room appartment with balconie Paris 4th', address:'6 Rue le Regrattier, 75004 Paris', description:'Located on the 2nd floor of an upscale building with an elevator. It features an entrance, a double living room with a long balcony, a fitted and equipped separate kitchen, a master suite with a private bathroom/toilet and a walk-in closet, 2 additional bedrooms, an office or 4th bedroom, a shower room and a separate lavatory.', nb_rooms: 6, surface: 153, user: youri, category: '', status: '')
# housing12.photo.attach(io: URI.open('https://i.pinimg.com/564x/e4/7a/81/e47a814a690b1914c0685651868a8b90.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
# housing12.save!

# p "#{Housing.count} housings created"
# ############

### RENT = CONTRAT ###

# p "destroying rents"
# Rent.destroy_all
# p "rents destroyed"
# rent1 = Rent.create!(amount:1400,
#                     status:'paid',
#                     name:'rent_may_2018',
#                     start_date: Date.new(2018,01,01),
#                     end_date: Date.new(2018,12,31))
# p "#{Rent.count} rents created"


### RENTERS ###

p "destroying renters"
Renter.destroy_all
p "renters destroyed"
capucine = Renter.create!(first_name: 'Capucine', last_name: "Magret", email:'capu@email.com',phone_number:'0782452616' , description:"J'adore la patisserie")
capucine.photo.attach(io: URI.open('https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
capucine.save!

theotime = Renter.create!(first_name: 'Théotime', last_name: "Malpe", email:'theo@email.com',phone_number:'0682452616' , description:"J'adore jouer de la guitare")
theotime.photo.attach(io: URI.open('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=402&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
theotime.save!

caroline = Renter.create!(first_name: 'Caroline', last_name: "Kilo", email:'caro.kilo@gmail.com',phone_number:'0782234616' , description:"Je suis calme et réservée")
caroline.photo.attach(io: URI.open('https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
caroline.save!

allan    = Renter.create!(first_name: 'Allan', last_name: "Violon", email:'allanviollon43@gmail.com',phone_number:'0678923452' , description:"Le rock était mieux avant")
allan.photo.attach(io: URI.open('https://images.unsplash.com/photo-1622031093531-f4e641788763?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
allan.save!

henri    = Renter.create!(first_name: 'Henri', last_name: "De Zer", email:'hdz@email.com',phone_number:'0782452689' , description:"J'ai moi aussi un appartement")
henri.photo.attach(io: URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
henri.save!

hugo     = Renter.create!(first_name: 'Hugo', last_name: "Laurisse", email:'hugofrance@hotmail.com',phone_number:'0672452616' , description:"Etudiant en dernière année de marketing")
hugo.photo.attach(io: URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
hugo.save!

charlotte = Renter.create!(first_name: 'Charlotte', last_name: "Chui", email:'chachui@email.com',phone_number:'0782454513' , description:"English student")
charlotte.photo.attach(io: URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
charlotte.save!

maxence   = Renter.create!(first_name: 'Maxence', last_name: "Chauvin", email:'maxlamenace@email.com',phone_number:'067354517' , description:"Consultant chez Deloite Data Consulting International Firm Worldwide")
maxence.photo.attach(io: URI.open('https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
maxence.save!

benjamine = Renter.create!(first_name: 'Benjamine', last_name: "Meaurro", email:'benjaminemomo@email.com',phone_number:'0556023678' , description:"Etudiante en médecine, spé chirugie faciale")
benjamine.photo.attach(io: URI.open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
benjamine.save!

louise    = Renter.create!(first_name: 'Louise', last_name: "Cusson", email:'louloudu13@email.com',phone_number:'0607080910' , description:"J'adore la musique contemporaine avec des sonorités anciennes")
louise.photo.attach(io: URI.open('https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
louise.save!

gregoire  = Renter.create!(first_name: 'Grégoire', last_name: "Baze", email:'gregzer@gmail.com',phone_number:'0681545251' , description:"Surfer de profession, je me reconvertis dans la data")
gregoire.photo.attach(io: URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
gregoire.save!


p "#{Renter.count} renters created"
