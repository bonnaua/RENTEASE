# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'
require 'date'

p "destroying renter_contracts"
RenterContract.destroy_all
p "renter_contracts destroyed"
p "destroying contracts"
Contract.destroy_all
p "contracts destroyed"
p "destroying users"
User.destroy_all
p "users destroyed"

### USER ###
youri = User.create!(first_name: 'Youri', last_name: "MG", email:'youri@email.com', password:'123456')
youri.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
youri.save!

audrey = User.create!(first_name: 'Audrey', last_name: "Gonera",  email:'audrey@email.com', password:'123456')
audrey.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
audrey.save!

aymeric = User.create!(first_name: 'Aymeric', last_name: "Bonnaud", email:'aymeric@email.com', password:'123456')
aymeric.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
aymeric.save!
p "#{User.count} users created"

guy_proprio = User.create!(first_name: 'Guy', last_name: "Leriche", email:'guy.leriche@gmail.com', password:'guyguy')
guy_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
guy_proprio.save!

manuela_proprio = User.create!(first_name: 'Manuela', last_name: "Demane", email:'manu.demane@gmail.com', password:'guyguy')
manuela_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
manuela_proprio.save!

###########

### HOUSING ###
p "destroying housings"
Housing.destroy_all
p "housings destroyed"

housing1 = Housing.create!(name:'Appartement cosy La Muette', address:'16 Rue Octave Feuillet, 75116 Paris', description:"Au premier étage au sein d'un bel immeuble de standing avec gardien et ascenseur, cet appartement, entièrement refait à neuf, offre une entrée, un double séjour, une salle à manger, une cuisine aménagée, une chambre avec sa salle de douche.", nb_rooms: 4, surface: 130, user: aymeric, category: 'Appartement', status: '')
housing1.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5da8c211d2a3490008f76775/16:9/w_2560%2Cc_limit/Palmolive02.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing1.save!

housing2 = Housing.create!(name:"Loft atypique Triangle d'Or", address:'5 Rue François 1er, 75008 Paris', description:"À proximité de la place François 1er, au 6ème et dernier étage d'un immeuble ancien avec ascenseur, ce loft propose un grand séjour avec cuisine ouverte, deux chambres avec salle de bain, un dressing. Vue sur la Tour Eiffel.", nb_rooms: 5, surface: 144, user: aymeric, category: 'Loft', status: '')
housing2.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f4ec3c973076a738b0b49d3/16:9/w_2560%2Cc_limit/HEJU%252520STUDIO%252520-%252520Bolivar%2525204.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing2.save!

housing3 = Housing.create!(name:'Appartement 1 chambre Trocadéro', address:'11 Avenue Raymond Poincaré, 75116 Paris', description:"Au dernier étage d'un immeuble classé, cet appartement rénové et meublé propose une grande entrée, un double séjour avec cuisine, une chambre de maitre et sa salle de bain. Belle hauteur sous plafond.", nb_rooms: 3, surface: 70, user: aymeric, category: 'Appartement', status: '')
housing3.photo.attach(io: URI.open('https://cdn.homedit.com/wp-content/uploads/2019/06/Parisian-apartment-living-room-decor.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing3.save!

housing4 = Housing.create!(name:'Duplex meublé Tuileries', address:"9 Rue d'Alger, 75001 Paris", description:"Très beau duplex meublé aux derniers étages d'un immeuble du 19ème siècle. Salon avec double hauteur, chambre à l'étage avec vue sur le Louvre et les Tuileries. Salle de bains avec baignoire et toilettes séparées. Opportunité rare à saisir.", nb_rooms: 3, surface: 84, user: aymeric, category: 'Duplex', status: '')
housing4.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f4ec3c973076a738b0b49d3/16:9/w_2560%2Cc_limit/HEJU%252520STUDIO%252520-%252520Bolivar%2525204.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing4.save!

housing5 = Housing.create!(name:'Atelier rénové Paris 8ème', address:'63 Rue la Boétie, 75008 Paris', description:"Dans un immeuble sécurisé avec gardien, au coeur de Paris, bel atelier amménagé, refait avec goût par un architecte d'intérieur. Grandes chambres, un bureau covertible en chambre, salle de bains. Prestations exceptionnelles.", nb_rooms: 4, surface: 137.5, user: audrey, category: 'Atelier', status: '')
housing5.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5df91c590db62900084a7aeb/16:9/w_2560%2Cc_limit/FL_AD_091.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing5.save!

housing6 = Housing.create!(name:'Appartement meublé Le Marais', address:'5 Rue Rambuteau, 75004 Paris', description:"Au coeur du Marais, bel appartement donnant sur cour, exposé plein Sud. Pièces de vie spacieuses et chambre cosy, mobilier de designer et équipements de qualité. Cave disponible. À saisir.", nb_rooms: 3, surface: 92.6, user: audrey, category: 'Appartement', status: '')
housing6.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5fbd3fea766f57158c9fb8e7/master/w_1600%2Cc_limit/GetClever_WOODKID_MLDutel_06.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing6.save!

housing7 = Housing.create!(name:'Appartement lumineux Paris 6ème', address:'16 Rue Mabillon, 75006 Paris', description:"En plein coeur de Saint-Germain-des-Prés, au dernier étage d'un immeuble hausssmanien, appartement lumineux avec exposition Sud Sud-Est, chambres côté cour, salle de bains de qualité avec toilettes séparées.", nb_rooms: 4, surface: 119.5, user: audrey, category: 'Appartement', status: '')
housing7.photo.attach(io: URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/deniot-sitting-room-paris-veranda-jpg-1575923849.jpg?crop=0.946xw:0.778xh;0.0176xw,0.185xh&resize=1600:*'), filename: 'X.jpg', content_type: 'image/jpg')
housing7.save!

housing8 = Housing.create!(name:'Appartement avec balcon Paris 7ème', address:'196 Rue de Grenelle, 75007 Paris', description:"Dans un bel immeuble de la rue de Grenelle, très bel appartement hausssmanien avec prestations de qualité. Grand double séjour ouvert sur  cuisine équipée, deux salles de bains attenantes aux chambres. Mobilier choisi avec soin.", nb_rooms: 3, surface: 82.2, user: audrey, category: 'Appartement', status: '')
housing8.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f11a65427ea31cb26914018/16:9/w_2560%2Cc_limit/Benoit_DSC_8758.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing8.save!

housing9 = Housing.create!(name:'Appartement luxueux Paris 6ème', address:'61 Rue des Saints-Pères, 75006 Paris', description:"Au coeur du 6ème arrondissement, dans un immeuble de maître, appartement rénové aux prestations expectionnelles. Matériaux et mobilier choisis avec soin. Séjour spacieux, cuisine  équipée, une suite parentale avec salle de bain et deux autres chambres. Toilettes séparées.", nb_rooms: 5, surface: 142.6, user: youri, category: 'Appartement', status: '')
housing9.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5e6a42b25c94700009daa7d7/16:9/w_2560%2Cc_limit/AD0420_DIRAND_7.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing9.save!

housing10 = Housing.create!(name:'Appartement avec terrasse Paris 7ème', address:'101 Rue du Bac, 75007 Paris', description:"En plein centre du triangle d'or, au 4ème étage d'un immeuble de standing avec gardien, appartement familial offrant un grand hall d'entrée, un double séjour ouvert sur cuisine, trois chambres avec salles de bain attenantes, toilettes séparées. Cave et parking compris.", nb_rooms: 6, surface: 186.4, user: youri, category: 'Appartement', status: '')
housing10.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/6026ede3a6494d0a3c89d6af/master/w_1600%2Cc_limit/05_201106_LAM_AMSTERDAM-5475HDS2.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing10.save!

housing11 = Housing.create!(name:'Appartement familial Turenne', address:'63 Rue de Bretagne, 75003 Paris', description:"Dans le 3ème arrondissement, au dernier étage d'un immeuble haussmanien avec gardien, appartement exceptionnel avec belle hauteur sous plafond. Une suite parentale avec vue sur le Centre Pompidou, deux chambres pour enfant avec leur salle de bain, un cellier et une cave à vin mise à neuf.", nb_rooms: 5, surface: 142.9, user: youri, category: 'Appartement', status: '')
housing11.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f7f2fa843638bc5cee75301/16:9/w_2560%2Cc_limit/heju%252520architecture%252520renovation%252520paris%252520appartement%252520minimaliste%252520seventies%2525209.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing11.save!

housing12 = Housing.create!(name:'Appartement exceptionnel Paris 4ème', address:'6 Rue le Regrattier, 75004 Paris', description:"Dans un immeuble hausssmanien avec ascenseur, appartement exceptionnel dans un ancien atelier d'artiste, comprenant une grande entrée, une cuisine ouverte sur double séjour avec balcon filant. Suite parentale avec dressing aménagé, trois autres chambres et un bureau. Deux grandes salles de bain avec baignoires, toilettes séparées, et accès à un parking  privatif.", nb_rooms: 6, surface: 253, user: youri, category: 'Atelier', status: '')
housing12.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5d711741d9117a0009b803a4/16:9/w_2560%2Cc_limit/AMELIE_IMG_3415.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing12.save!

p "#{Housing.count} housings created"
############

########################### EXPENSES ####################################
# expense_1_1  = Expense.create!(name: 'charges mai' , category:'charge locatives' , amount: 80 )
# expense_1_2  = Expense.create!(name: 'charges juin' , category:'charge locatives' , amount: 80)
# expense_1_3  = Expense.create!(name: 'charges juillet', category:'charge locatives' , amount: 80)
# expense_2_1  = Expense.create!(name: 'travaux rénovation' , category:'rénovation' , amount: 14000, frequency: 1)
# expense_2_2  = Expense.create!(name: 'charges locatives 2018' , category:'charges locatives' , amount: 1600, frequency: 12)

p "destroying Expenses"
Expense.destroy_all
p "Expenses destroyed"

Housing.all.each do |housing|
  amount_CC = (30..120).step(10).to_a.sample
  amount_reno = (1000..10000).step(500).to_a.sample
  amount_taxe_fonc = (500..6000).step(5).to_a.sample
  amount_copro = (80..300).to_a.sample

  months = ['janvier', 'février', 'mars', 'avril', 'mai', 'juin', 'juillet', 'aout', 'septembre', 'octobre', 'novembre', 'décembre']
  years = [2016,2017,2018,2019]
  trimester = [1, 2, 3, 4]
  counter_month  = 0
  counter_trimester = 0
  periodicity = (1..47).to_a.sample
  periodicity.times do
    Expense.create!(name: "Taxes foncières #{years[counter_month/12]}"  , category:'Taxes foncières' , amount: amount_taxe_fonc, housing: housing) if counter_month % 12 == 0
    Expense.create!(name: "Charges locatives #{months[counter_month%12]} #{years[counter_month/12]}"  , category:'Charges locatives' , amount: amount_CC, housing: housing)
    counter_month += 1
  end
  nb_trimester = periodicity /3
  year_number = 2016
  trimestre_numero = 1
  nb_trimester.times do |i|
    i += 1
    Expense.create!(name: "Charge copropriété trimestre #{trimestre_numero} #{year_number}"  , category:'Charges copropriété' , amount: amount_copro, housing: housing)
    (trimestre_numero%4==0) ? trimestre_numero = 1 : trimestre_numero +=1
    year_number += 1 if i%4 == 0
    counter_trimester += 1
  end

  ## CHARGES PONCTUELLES ##
  (0..1).to_a.sample.times do
    Expense.create!(name: "Rénovation exceptionnelle cuisine"  , category:'Rénovation' , amount: amount_reno, housing: housing)
  end
  (0..1).to_a.sample.times do
    Expense.create!(name: "Rénovation exceptionnelle isolation"  , category:'Rénovation' , amount: amount_reno, housing: housing)
  end
  (0..1).to_a.sample.times do
    Expense.create!(name: "Rénovation exceptionnelle ballon d'eau chaude"  , category:'Rénovation' , amount: amount_reno, housing: housing)
  end

end

p "#{Expense.count} expenses created"


# template

#Expense.create!(name: 'Charge copropriété trimestre X' , category:'copopriété' , amount: XX)
#Expense.create!(name: 'Charge locatives mois année' , category:'charge locatives' , amount: XX )
#Expense.create!(name: 'Rénovation XXX' , category:'renovation' , amount: XX)
#Expense.create!(name: 'Taxe foncière' , category:'impôts' , amount: XX )
#Expense.create!(name: 'Taxe foncière' , category:'impôts' , amount: XX )
#Expense.create!(name: 'Taxe foncière' , category:'impôts' , amount: XX )




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


### CONTRACTS ###

p "destroying contracts"
Contract.destroy_all
p "contracts destroyed"

#AYMERIC

contract1 = Contract.create!(housing: housing1, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1800, rental_expenses: 100)

contract2 = Contract.create!(housing: housing1, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1830, rental_expenses: 100)

contract3 = Contract.create!(housing: housing2, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 150)

contract4 = Contract.create!(housing: housing3, start_date: Date.new(2016,01,01), end_date: Date.new(2017,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2300, rental_expenses: 50)

contract5 = Contract.create!(housing: housing3, start_date: Date.new(2017,07,01), end_date: Date.new(2018,12,31), rent_due_date: Date.new(2017,07,01),  rent: 2300, rental_expenses: 50)

contract6 = Contract.create!(housing: housing3, start_date: Date.new(2019,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2019,07,01),  rent: 2300, rental_expenses: 50)

contract7 = Contract.create!(housing: housing4, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1900, rental_expenses: 200)

contract8 = Contract.create!(housing: housing4, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1950, rental_expenses: 200)


#AUDREY

contract9 = Contract.create!(housing: housing5, start_date: Date.new(2016,01,01), end_date: Date.new(2018,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 200)

contract10 = Contract.create!(housing: housing5, start_date: Date.new(2018,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,07,01),  rent: 2000, rental_expenses: 250)

contract11 = Contract.create!(housing: housing6, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1600, rental_expenses: 50)

contract12 = Contract.create!(housing: housing7, start_date: Date.new(2016,01,01), end_date: Date.new(2016,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1000, rental_expenses: 250)

contract13 = Contract.create!(housing: housing7, start_date: Date.new(2017,01,01), end_date: Date.new(2018,12,31), rent_due_date: Date.new(2017,01,01),  rent: 1000, rental_expenses: 250)

contract14 = Contract.create!(housing: housing7, start_date: Date.new(2019,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2019,01,01),  rent: 1000, rental_expenses: 250)

contract15 = Contract.create!(housing: housing8, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 990, rental_expenses: 10)

contract16 = Contract.create!(housing: housing8, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 990, rental_expenses: 10)

renter_contract9 = RenterContract.create!(renter_id: capucine.id, contract_id: contract9.id )

#YOURI

contract16 = Contract.create!(housing: housing9, start_date: Date.new(2016,01,01), end_date: Date.new(2016,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 100)

contract17 = Contract.create!(housing: housing9, start_date: Date.new(2016,07,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,07,01),  rent: 2000, rental_expenses: 100)

contract18 = Contract.create!(housing: housing9, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 2000, rental_expenses: 100)

contract19 = Contract.create!(housing: housing10, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1800, rental_expenses: 100)

contract20 = Contract.create!(housing: housing10, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1800, rental_expenses: 100)

contract21 = Contract.create!(housing: housing11, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 5000, rental_expenses: 500)

contract22 = Contract.create!(housing: housing12, start_date: Date.new(2016,01,01), end_date: Date.new(2016,06,30), rent_due_date: Date.new(2016,01,01),  rent: 4100, rental_expenses: 150)

contract23 = Contract.create!(housing: housing12, start_date: Date.new(2016,07,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,07,01),  rent: 4100, rental_expenses: 150)

contract24 = Contract.create!(housing: housing12, start_date: Date.new(2018,01,01), end_date: Date.new(2018,06,30), rent_due_date: Date.new(2018,01,01),  rent: 3100, rental_expenses: 150)

contract25 = Contract.create!(housing: housing12, start_date: Date.new(2018,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,07,01),  rent: 3100, rental_expenses: 150)

p "#{Contract.count} contracts created"
