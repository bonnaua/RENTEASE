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
# youri.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# youri.save!

audrey = User.create!(first_name: 'Audrey', last_name: "Gonera",  email:'audrey@email.com', password:'123456')
# audrey.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# audrey.save!

aymeric = User.create!(first_name: 'Aymeric', last_name: "Bonnaud", email:'aymeric@email.com', password:'123456')
# aymeric.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# aymeric.save!
p "#{User.count} users created"

guy_proprio = User.create!(first_name: 'Guy', last_name: "Leriche", email:'guy.leriche@gmail.com', password:'guyguy')
# guy_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# guy_proprio.save!

manuela_proprio = User.create!(first_name: 'Manuela', last_name: "Demane", email:'manu.demane@gmail.com', password:'guyguy')
# manuela_proprio.photo.attach(io: URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
# manuela_proprio.save!

###########

### HOUSING ###
p "destroying housings"
Housing.destroy_all
p "housings destroyed"

housing1 = Housing.create!(name:'Appartement cosy La Muette', address:'16 Rue Octave Feuillet, 75116 Paris', description:"Au premier ??tage au sein d'un bel immeuble de standing avec gardien et ascenseur, cet appartement, enti??rement refait ?? neuf, offre une entr??e, un double s??jour, une salle ?? manger, une cuisine am??nag??e, une chambre avec sa salle de douche.", nb_rooms: 4, surface: 130, user: aymeric, category: 'Appartement', status: '')
housing1.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5da8c211d2a3490008f76775/16:9/w_2560%2Cc_limit/Palmolive02.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing1.save!

housing2 = Housing.create!(name:"Loft atypique Triangle d'Or", address:'5 Rue Fran??ois 1er, 75008 Paris', description:"?? proximit?? de la place Fran??ois 1er, au 6??me et dernier ??tage d'un immeuble ancien avec ascenseur, ce loft propose un grand s??jour avec cuisine ouverte, deux chambres avec salle de bain, un dressing. Vue sur la Tour Eiffel.", nb_rooms: 5, surface: 144, user: aymeric, category: 'Loft', status: '')
housing2.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/60ca624ef509f73499ad663f/16:9/w_2560%2Cc_limit/1667-07a4706.jpgs'), filename: 'X.jpg', content_type: 'image/jpg')
housing2.save!

housing3 = Housing.create!(name:'Appartement 1 chambre Trocad??ro', address:'11 Avenue Raymond Poincar??, 75116 Paris', description:"Au dernier ??tage d'un immeuble class??, cet appartement r??nov?? et meubl?? propose une grande entr??e, un double s??jour avec cuisine, une chambre de maitre et sa salle de bain. Belle hauteur sous plafond.", nb_rooms: 3, surface: 70, user: aymeric, category: 'Appartement', status: '')
housing3.photo.attach(io: URI.open('https://cdn.homedit.com/wp-content/uploads/2019/06/Parisian-apartment-living-room-decor.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing3.save!

housing4 = Housing.create!(name:'Duplex meubl?? Tuileries', address:"9 Rue d'Alger, 75001 Paris", description:"Tr??s beau duplex meubl?? aux derniers ??tages d'un immeuble du 19??me si??cle. Salon avec double hauteur, chambre ?? l'??tage avec vue sur le Louvre et les Tuileries. Salle de bains avec baignoire et toilettes s??par??es. Opportunit?? rare ?? saisir.", nb_rooms: 3, surface: 84, user: aymeric, category: 'Duplex', status: '')
housing4.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f4ec3c973076a738b0b49d3/16:9/w_2560%2Cc_limit/HEJU%252520STUDIO%252520-%252520Bolivar%2525204.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing4.save!

housing5 = Housing.create!(name:'Atelier r??nov?? Paris 8??me', address:'63 Rue la Bo??tie, 75008 Paris', description:"Dans un immeuble s??curis?? avec gardien, au coeur de Paris, bel atelier amm??nag??, refait avec go??t par un architecte d'int??rieur. Grandes chambres, un bureau covertible en chambre, salle de bains. Prestations exceptionnelles.", nb_rooms: 4, surface: 137.5, user: audrey, category: 'Atelier', status: '')
housing5.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5df91c590db62900084a7aeb/16:9/w_2560%2Cc_limit/FL_AD_091.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing5.save!

housing6 = Housing.create!(name:'Appartement meubl?? Le Marais', address:'5 Rue Rambuteau, 75004 Paris', description:"Au coeur du Marais, bel appartement donnant sur cour, expos?? plein Sud. Pi??ces de vie spacieuses et chambre cosy, mobilier de designer et ??quipements de qualit??. Cave disponible. ?? saisir.", nb_rooms: 3, surface: 92.6, user: audrey, category: 'Appartement', status: '')
housing6.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5fbd3fea766f57158c9fb8e7/master/w_1600%2Cc_limit/GetClever_WOODKID_MLDutel_06.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing6.save!

housing7 = Housing.create!(name:'Appartement lumineux Paris 6??me', address:'16 Rue Mabillon, 75006 Paris', description:"En plein coeur de Saint-Germain-des-Pr??s, au dernier ??tage d'un immeuble hausssmanien, appartement lumineux avec exposition Sud Sud-Est, chambres c??t?? cour, salle de bains de qualit?? avec toilettes s??par??es.", nb_rooms: 4, surface: 119.5, user: audrey, category: 'Appartement', status: '')
housing7.photo.attach(io: URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/deniot-sitting-room-paris-veranda-jpg-1575923849.jpg?crop=0.946xw:0.778xh;0.0176xw,0.185xh&resize=1600:*'), filename: 'X.jpg', content_type: 'image/jpg')
housing7.save!

housing8 = Housing.create!(name:'Appartement avec balcon Paris 7??me', address:'196 Rue de Grenelle, 75007 Paris', description:"Dans un bel immeuble de la rue de Grenelle, tr??s bel appartement hausssmanien avec prestations de qualit??. Grand double s??jour ouvert sur  cuisine ??quip??e, deux salles de bains attenantes aux chambres. Mobilier choisi avec soin.", nb_rooms: 3, surface: 82.2, user: audrey, category: 'Appartement', status: '')
housing8.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f11a65427ea31cb26914018/16:9/w_2560%2Cc_limit/Benoit_DSC_8758.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing8.save!

housing9 = Housing.create!(name:'Appartement luxueux Paris 6??me', address:'61 Rue des Saints-P??res, 75006 Paris', description:"Au coeur du 6??me arrondissement, dans un immeuble de ma??tre, appartement r??nov?? aux prestations exceptionnelles. Mat??riaux et mobilier choisis avec soin. S??jour spacieux, cuisine  ??quip??e, une suite parentale avec salle de bain et deux autres chambres. Toilettes s??par??es.", nb_rooms: 5, surface: 142.6, user: youri, category: 'Appartement', status: '')
housing9.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5e6a42b25c94700009daa7d7/16:9/w_2560%2Cc_limit/AD0420_DIRAND_7.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing9.save!

housing10 = Housing.create!(name:'Appartement avec terrasse Paris 7??me', address:'101 Rue du Bac, 75007 Paris', description:"En plein centre du triangle d'or, au 4??me ??tage d'un immeuble de standing avec gardien, appartement familial offrant un grand hall d'entr??e, un double s??jour ouvert sur cuisine, trois chambres avec salles de bain attenantes, toilettes s??par??es. Cave et parking compris.", nb_rooms: 6, surface: 186.4, user: youri, category: 'Appartement', status: '')
housing10.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/6026ede3a6494d0a3c89d6af/master/w_1600%2Cc_limit/05_201106_LAM_AMSTERDAM-5475HDS2.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing10.save!

housing11 = Housing.create!(name:'Appartement familial Turenne', address:'63 Rue de Bretagne, 75003 Paris', description:"Dans le 3??me arrondissement, au dernier ??tage d'un immeuble haussmanien avec gardien, appartement exceptionnel avec belle hauteur sous plafond. Une suite parentale avec vue sur le Centre Pompidou, deux chambres pour enfant avec leur salle de bain, un cellier et une cave ?? vin mise ?? neuf.", nb_rooms: 5, surface: 142.9, user: youri, category: 'Appartement', status: '')
housing11.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5f7f2fa843638bc5cee75301/16:9/w_2560%2Cc_limit/heju%252520architecture%252520renovation%252520paris%252520appartement%252520minimaliste%252520seventies%2525209.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing11.save!

housing12 = Housing.create!(name:'Appartement exceptionnel Paris 4??me', address:'6 Rue le Regrattier, 75004 Paris', description:"Dans un immeuble hausssmanien avec ascenseur, appartement exceptionnel dans un ancien atelier d'artiste, comprenant une grande entr??e, une cuisine ouverte sur double s??jour avec balcon filant. Suite parentale avec dressing am??nag??, trois autres chambres et un bureau. Deux grandes salles de bain avec baignoires, toilettes s??par??es, et acc??s ?? un parking  privatif.", nb_rooms: 6, surface: 253, user: youri, category: 'Atelier', status: '')
housing12.photo.attach(io: URI.open('https://media.architecturaldigest.com/photos/5d711741d9117a0009b803a4/16:9/w_2560%2Cc_limit/AMELIE_IMG_3415.jpg'), filename: 'X.jpg', content_type: 'image/jpg')
housing12.save!

p "#{Housing.count} housings created"
############

########################### EXPENSES ####################################

p "destroying Expenses"
Expense.destroy_all
p "Expenses destroyed"

Housing.all.each do |housing|
  amount_CC = (30..120).step(10).to_a.sample
  amount_reno = (1000..10000).step(500).to_a.sample
  amount_taxe_fonc = (500..6000).step(5).to_a.sample
  amount_copro = (80..300).to_a.sample
  days = {0 => "Sunday",
          1 => "Monday",
          2 => "Tuesday",
          3 => "Wednesday",
          4 => "Thursday",
          5 => "Friday",
          6 => "Saturday"}
  months = ['janvier', 'f??vrier', 'mars', 'avril', 'mai', 'juin', 'juillet', 'aout', 'septembre', 'octobre', 'novembre', 'd??cembre']
  months_number = [1,2,3,4,5,6,7,8,9,10,11,12]
  years = [2016,2017,2018,2019]
  trimester = [1, 2, 3, 4]
  counter_month  = 0
  counter_trimester = 0
  periodicity = (1..47).to_a.sample
  periodicity.times do
    created_at_modif = "#{years[counter_month/12]}/#{months_number[counter_month%12]}/01"
    Expense.create!(name: "Taxes fonci??res #{years[counter_month/12]}"  , category:'Taxes fonci??res' , amount: amount_taxe_fonc, housing: housing, created_at: created_at_modif, updated_at: created_at_modif) if counter_month % 12 == 0
    Expense.create!(name: "Charges locatives #{months[counter_month%12]} #{years[counter_month/12]}"  , category:'Charges locatives' , amount: amount_CC, housing: housing, created_at: created_at_modif, updated_at: created_at_modif)
    counter_month += 1
  end
  nb_trimester = periodicity /3
  year_number = 2016
  trimestre_numero = 1
  nb_trimester.times do |i|
    i += 1
    month = 0
    case trimestre_numero
    when 1
      month = 01
    when 2
      month = 04
    when 3
      month = 07
    when 4
      month = 10
    end
    created_at_modif = "#{year_number}/#{month}/01"

    Expense.create!(name: "Charge copropri??t?? trimestre #{trimestre_numero} #{year_number}"  , category:'Charges copropri??t??' , amount: amount_copro, housing: housing, created_at: created_at_modif, updated_at: created_at_modif)
    (trimestre_numero%4==0) ? trimestre_numero = 1 : trimestre_numero +=1
    year_number += 1 if i%4 == 0
    counter_trimester += 1
  end

  ## CHARGES PONCTUELLES ##
  (0..1).to_a.sample.times do
    created_at_modif = "#{years.sample}/09/01"
    Expense.create!(name: "R??novation exceptionnelle cuisine"  , category:'R??novation' , amount: amount_reno, housing: housing, created_at: created_at_modif, updated_at: created_at_modif)
  end
  (0..1).to_a.sample.times do
    created_at_modif = "#{years.sample}/09/01"
    Expense.create!(name: "R??novation exceptionnelle isolation"  , category:'R??novation' , amount: amount_reno, housing: housing, created_at: created_at_modif, updated_at: created_at_modif)
  end
  (0..1).to_a.sample.times do
    created_at_modif = "#{years.sample}/09/01"
    Expense.create!(name: "R??novation exceptionnelle ballon d'eau chaude"  , category:'R??novation' , amount: amount_reno, housing: housing, created_at: created_at_modif, updated_at: created_at_modif)
  end
  # PRET BANQUE
  Expense.create!(name: "Pr??t Banque biens 2016"  , category:'Pr??t' , amount: amount_taxe_fonc*10, housing: housing, created_at: "2016-01-01", updated_at: "2016-01-01")
  Expense.create!(name: "Pr??t Banque biens 2017"  , category:'Pr??t' , amount: amount_taxe_fonc*3, housing: housing, created_at: "2017-01-01", updated_at: "2017-01-01")

end

p "#{Expense.count} expenses created"



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
capucine = Renter.create!(first_name: 'Capucine', last_name: "Magret", email:'capu@email.com',phone_number:'0782452616' , description:"Patissi??re exp??riment??e")
capucine.photo.attach(io: URI.open('https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
capucine.save!

theotime = Renter.create!(first_name: 'Th??otime', last_name: "Malpe", email:'theo@email.com',phone_number:'0682452616' , description:"Postier")
theotime.photo.attach(io: URI.open('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=402&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
theotime.save!

caroline = Renter.create!(first_name: 'Caroline', last_name: "Kilo", email:'caro.kilo@gmail.com',phone_number:'0782234616' , description:"??tudiante en stage de fin d'??tudes")
caroline.photo.attach(io: URI.open('https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
caroline.save!

allan    = Renter.create!(first_name: 'Allan', last_name: "Violon", email:'allanviollon43@gmail.com',phone_number:'0678923452' , description:"Musicien professionnel")
allan.photo.attach(io: URI.open('https://images.unsplash.com/photo-1622031093531-f4e641788763?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
allan.save!

henri    = Renter.create!(first_name: 'Henri', last_name: "De Zer", email:'hdz@email.com',phone_number:'0782452689' , description:"Jeune actif dans l'informatique")
henri.photo.attach(io: URI.open('https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
henri.save!

hugo     = Renter.create!(first_name: 'Hugo', last_name: "Laurisse", email:'hugofrance@hotmail.com',phone_number:'0672452616' , description:"Etudiant en derni??re ann??e de marketing")
hugo.photo.attach(io: URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
hugo.save!

charlotte = Renter.create!(first_name: 'Charlotte', last_name: "Chui", email:'chachui@email.com',phone_number:'0782454513' , description:"English student")
charlotte.photo.attach(io: URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
charlotte.save!

maxence   = Renter.create!(first_name: 'Maxence', last_name: "Chauvin", email:'maxlamenace@email.com',phone_number:'067354517' , description:"Consultant Deloitte Data")
maxence.photo.attach(io: URI.open('https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
maxence.save!

benjamine = Renter.create!(first_name: 'Benjamine', last_name: "Meaurro", email:'benjaminemomo@email.com',phone_number:'0556023678' , description:"Etudiante en m??decine, sp?? chirugie faciale")
benjamine.photo.attach(io: URI.open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
benjamine.save!

louise    = Renter.create!(first_name: 'Louise', last_name: "Cusson", email:'louloudu13@email.com',phone_number:'0607080910' , description:"Egyptologue")
louise.photo.attach(io: URI.open('https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
louise.save!

gregoire  = Renter.create!(first_name: 'Gr??goire', last_name: "Baze", email:'gregzer@gmail.com',phone_number:'0681545251' , description:"Surfer de profession, reconverti dans la data")
gregoire.photo.attach(io: URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
gregoire.save!

luiz    = Renter.create!(first_name: 'Luiz', last_name: "Da Cruz", email:'luiz@gmail.com',phone_number:'0681567751' , description:"Commercial Renault France")
luiz.photo.attach(io: URI.open('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
luiz.save!

manuel    = Renter.create!(first_name: 'Manuel', last_name: "Valls", email:'manurepondstp@gmail.com',phone_number:'0666567891' , description:"Ancien expat de retour d'Espagne")
manuel.photo.attach(io: URI.open('https://pbs.twimg.com/profile_images/1108674272539611137/yTcXvPPX.png'), filename: 'X.jpg', content_type: 'image/jpg')
manuel.save!

christophe = Renter.create!(first_name: 'Christophe', last_name: "Croux", email:'ccroux@gmail.com',phone_number:'0634549278' , description:"Professeur et chercheur")
christophe.photo.attach(io: URI.open('https://images.unsplash.com/photo-1504257432389-52343af06ae3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
christophe.save!

maeva = Renter.create!(first_name: 'Maeva', last_name: "Aveam", email:'maevaaveam@gmail.com',phone_number:'0783475610' , description:"Digital sedentary")
maeva.photo.attach(io: URI.open('https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
maeva.save!

judith = Renter.create!(first_name: 'Judith', last_name: "Leroy", email:'judith@gmail.com',phone_number:'0657983434' , description:"Chef cuisini??re")
judith.photo.attach(io: URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
judith.save!

ahmed = Renter.create!(first_name: 'Ahmed', last_name: "Messaoud", email:'ahmed@gmail.com',phone_number:'0710119889' , description:"??tudiant en architecture")
ahmed.photo.attach(io: URI.open('https://images.unsplash.com/photo-1519345182560-3f2917c472ef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
ahmed.save!

federico = Renter.create!(first_name: 'Federico', last_name: "Chiesa", email:'fefe@gmail.com',phone_number:'0699108765' , description:"Footballeur")
federico.photo.attach(io: URI.open('https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
federico.save!

austin = Renter.create!(first_name: 'Austin', last_name: "Wade", email:'austin@gmail.com',phone_number:'0691256918' , description:"American developer in Paris")
austin.photo.attach(io: URI.open('https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=716&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
austin.save!

nico = Renter.create!(first_name: 'Nico', last_name: "Rosberg", email:'nico@gmail.com',phone_number:'0687615434' , description:"Pilote de course")
nico.photo.attach(io: URI.open('https://images.unsplash.com/photo-1509670572852-5823184def8c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
nico.save!

giulia = Renter.create!(first_name: 'Giulia', last_name: "Della Rovere", email:'giulia@gmail.com',phone_number:'0655768911' , description:"Designer d'int??rieur")
giulia.photo.attach(io: URI.open('https://images.unsplash.com/photo-1551843073-4a9a5b6fcd5f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
giulia.save!

fatima = Renter.create!(first_name: 'Fatima', last_name: "Louella", email:'fatima@gmail.com',phone_number:'0653337865' , description:"Ing??nieur Agronome")
fatima.photo.attach(io: URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
fatima.save!

malo = Renter.create!(first_name: 'Malo', last_name: "Deaux", email:'malo@gmail.com',phone_number:'0788654321' , description:"Marin et cycliste")
malo.photo.attach(io: URI.open('https://images.unsplash.com/flagged/photo-1595514191830-3e96a518989b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
malo.save!

raphaelle = Renter.create!(first_name: 'Rapha??lle', last_name: "Laumi??re", email:'raphaelleuh@gmail.com',phone_number:'06543668921' , description:"Chercheuse en lettres")
raphaelle.photo.attach(io: URI.open('https://images.unsplash.com/photo-1450297350677-623de575f31c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
raphaelle.save!

imane = Renter.create!(first_name: 'Imane', last_name: "Enami", email:'imane@gmail.com',phone_number:'0788654701' , description:"Horlog??re chez Piaget")
imane.photo.attach(io: URI.open('https://images.unsplash.com/photo-1567783044809-704b82c7f862?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
imane.save!

joseph = Renter.create!(first_name: 'Joseph', last_name: "Cohen", email:'joseph@gmail.com',phone_number:'0766897511' , description:"Restaurateur et caviste")
joseph.photo.attach(io: URI.open('https://images.unsplash.com/photo-1615208429553-d9982932ca5c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80'), filename: 'X.jpg', content_type: 'image/jpg')
joseph.save!

p "#{Renter.count} renters created"


### CONTRACTS ###

p "destroying contracts"
Contract.destroy_all
p "contracts destroyed"
p "renter_contracts destroyed"

#AYMERIC

contract1 = Contract.create!(housing: housing1, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1800, rental_expenses: 100)

contract2 = Contract.create!(housing: housing1, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1830, rental_expenses: 100)

contract3 = Contract.create!(housing: housing2, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 150)

contract4 = Contract.create!(housing: housing3, start_date: Date.new(2016,01,01), end_date: Date.new(2017,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2300, rental_expenses: 50)

contract5 = Contract.create!(housing: housing3, start_date: Date.new(2017,07,01), end_date: Date.new(2018,12,31), rent_due_date: Date.new(2017,07,01),  rent: 2300, rental_expenses: 50)

contract6 = Contract.create!(housing: housing3, start_date: Date.new(2019,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2019,07,01),  rent: 2300, rental_expenses: 50)

contract7 = Contract.create!(housing: housing4, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1900, rental_expenses: 200)

contract8 = Contract.create!(housing: housing4, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1950, rental_expenses: 200)

renter_contract1 = RenterContract.create!(renter_id: capucine.id, contract_id: contract1.id )

renter_contract2 = RenterContract.create!(renter_id: theotime.id, contract_id: contract2.id )

renter_contract3 = RenterContract.create!(renter_id: caroline.id, contract_id: contract3.id )

renter_contract4 = RenterContract.create!(renter_id: allan.id, contract_id: contract4.id )

renter_contract5 = RenterContract.create!(renter_id: henri.id, contract_id: contract5.id )

renter_contract6 = RenterContract.create!(renter_id: hugo.id, contract_id: contract6.id )

renter_contract7 = RenterContract.create!(renter_id: charlotte.id, contract_id: contract7.id )

renter_contract8 = RenterContract.create!(renter_id: maxence.id, contract_id: contract8.id )



#AUDREY

contract9 = Contract.create!(housing: housing5, start_date: Date.new(2016,01,01), end_date: Date.new(2018,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 200)

contract10 = Contract.create!(housing: housing5, start_date: Date.new(2018,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,07,01),  rent: 2000, rental_expenses: 250)

contract11 = Contract.create!(housing: housing6, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1600, rental_expenses: 50)

contract12 = Contract.create!(housing: housing7, start_date: Date.new(2016,01,01), end_date: Date.new(2016,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1000, rental_expenses: 250)

contract13 = Contract.create!(housing: housing7, start_date: Date.new(2017,01,01), end_date: Date.new(2018,12,31), rent_due_date: Date.new(2017,01,01),  rent: 1000, rental_expenses: 250)

contract14 = Contract.create!(housing: housing7, start_date: Date.new(2019,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2019,01,01),  rent: 1000, rental_expenses: 250)

contract15 = Contract.create!(housing: housing8, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 990, rental_expenses: 10)

contract16 = Contract.create!(housing: housing8, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 990, rental_expenses: 10)

renter_contract9 = RenterContract.create!(renter_id: benjamine.id, contract_id: contract9.id )

renter_contract10 = RenterContract.create!(renter_id: louise.id, contract_id: contract10.id )

renter_contract11 = RenterContract.create!(renter_id: gregoire.id, contract_id: contract11.id )

renter_contract12 = RenterContract.create!(renter_id: luiz.id, contract_id: contract12.id )

renter_contract13 = RenterContract.create!(renter_id: manuel.id, contract_id: contract13.id )

renter_contract14 = RenterContract.create!(renter_id: christophe.id, contract_id: contract14.id )

renter_contract15 = RenterContract.create!(renter_id: maeva.id, contract_id: contract15.id )

renter_contract16 = RenterContract.create!(renter_id: judith.id, contract_id: contract16.id )

#YOURI

contract17 = Contract.create!(housing: housing9, start_date: Date.new(2016,01,01), end_date: Date.new(2016,06,30), rent_due_date: Date.new(2016,01,01),  rent: 2000, rental_expenses: 100)

contract18 = Contract.create!(housing: housing9, start_date: Date.new(2016,07,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,07,01),  rent: 2000, rental_expenses: 100)

contract19 = Contract.create!(housing: housing9, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 2000, rental_expenses: 100)

contract20 = Contract.create!(housing: housing10, start_date: Date.new(2016,01,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,01,01),  rent: 1800, rental_expenses: 100)

contract21 = Contract.create!(housing: housing10, start_date: Date.new(2018,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,01,01),  rent: 1800, rental_expenses: 100)

contract22 = Contract.create!(housing: housing11, start_date: Date.new(2016,01,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2016,01,01),  rent: 5000, rental_expenses: 500)

contract23 = Contract.create!(housing: housing12, start_date: Date.new(2016,01,01), end_date: Date.new(2016,06,30), rent_due_date: Date.new(2016,01,01),  rent: 4100, rental_expenses: 150)

contract24 = Contract.create!(housing: housing12, start_date: Date.new(2016,07,01), end_date: Date.new(2017,12,31), rent_due_date: Date.new(2016,07,01),  rent: 4100, rental_expenses: 150)

contract25 = Contract.create!(housing: housing12, start_date: Date.new(2018,01,01), end_date: Date.new(2018,06,30), rent_due_date: Date.new(2018,01,01),  rent: 3100, rental_expenses: 150)

contract26 = Contract.create!(housing: housing12, start_date: Date.new(2018,07,01), end_date: Date.new(2019,12,31), rent_due_date: Date.new(2018,07,01),  rent: 3100, rental_expenses: 150)

renter_contract17 = RenterContract.create!(renter_id: ahmed.id, contract_id: contract17.id )

renter_contract18 = RenterContract.create!(renter_id: federico.id, contract_id: contract18.id )

renter_contract19 = RenterContract.create!(renter_id: austin.id, contract_id: contract19.id )

renter_contract20 = RenterContract.create!(renter_id: nico.id, contract_id: contract20.id )

renter_contract21 = RenterContract.create!(renter_id: giulia.id, contract_id: contract21.id )

renter_contract22 = RenterContract.create!(renter_id: fatima.id, contract_id: contract22.id )

renter_contract23 = RenterContract.create!(renter_id: malo.id, contract_id: contract23.id )

renter_contract24 = RenterContract.create!(renter_id: raphaelle.id, contract_id: contract24.id )

renter_contract25 = RenterContract.create!(renter_id: imane.id, contract_id: contract25.id )

renter_contract26 = RenterContract.create!(renter_id: joseph.id, contract_id: contract26.id )


p "#{RenterContract.count} renter_contracts created"
p "#{Contract.count} contracts created"



### RENTS ###

p "destroying rents"
Rent.destroy_all
p "rents destroyed"

Contract.all.each do |contract|
  contract_duration = (contract.end_date - contract.start_date).ceil/30
  start_month = contract.start_date.month
  start_year = contract.start_date.year
  months = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
  months_number = [1,2,3,4,5,6,7,8,9,10,11,12]
  years = [2016,2017,2018,2019]

  contract_duration.times do
    Rent.create!(name: "Loyer", amount: "#{contract.rent + contract.rental_expenses}", date: "#{start_year}-#{months[(start_month - 1)%12]}-01", contract_id: contract.id, housing_id: contract.housing.id)
    start_month += 1
    if start_month == 12
      start_year += 1
    end
  end
end

p "#{Rent.count} rents created"


### DOCUMENTS ADMINISTRATIFS ###

p "destroying documents"
Document.destroy_all
p "documents destroyed"

document1 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing1.id)
document1.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document1.save!
document2 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing1.id)
document2.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document2.save!
document3 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing1.id)
document3.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document3.save!
document4 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing1.id)
document4.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document4.save!

document5 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing2.id)
document5.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document5.save!
document6 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing2.id)
document6.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document6.save!
document7 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing2.id)
document7.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document7.save!
document8 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing2.id)
document8.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document8.save!

document9 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing3.id)
document9.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document9.save!
document10 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing3.id)
document10.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document10.save!
document11 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing3.id)
document11.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document11.save!
document12 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing3.id)
document12.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document12.save!

document13 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing4.id)
document13.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document13.save!
document14 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing4.id)
document14.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document14.save!
document15 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing4.id)
document15.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document15.save!
document16 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing4.id)
document16.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document16.save!

document17 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing5.id)
document17.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document17.save!
document18 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing5.id)
document18.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document18.save!
document19 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing5.id)
document19.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document19.save!
document20 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing5.id)
document20.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document20.save!

document21 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing6.id)
document21.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document21.save!
document22 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing6.id)
document22.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document22.save!
document23 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing6.id)
document23.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document23.save!
document24 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing6.id)
document24.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document24.save!

document25 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing7.id)
document25.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document25.save!
document26 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing7.id)
document26.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document26.save!
document27 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing7.id)
document27.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document27.save!
document28 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing7.id)
document28.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document28.save!

document29 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing8.id)
document29.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document29.save!
document30 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing8.id)
document30.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document30.save!
document31 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing8.id)
document31.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document31.save!
document32 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing8.id)
document32.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document32.save!

document33 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing9.id)
document33.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document33.save!
document34 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing9.id)
document34.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document34.save!
document35 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing9.id)
document35.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document35.save!
document36 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing9.id)
document36.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document36.save!

document37 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing10.id)
document37.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document37.save!
document38 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing10.id)
document38.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document38.save!
document39 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing10.id)
document39.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document39.save!
document40 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing10.id)
document40.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document40.save!

document41 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing11.id)
document41.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document41.save!
document42 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing11.id)
document42.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document42.save!
document43 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing11.id)
document43.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document43.save!
document44 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing11.id)
document44.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document44.save!

document45 = Document.create!(name: "Bail sur 3 ans", category: "Contrat d'habitation", housing_id: housing12.id)
document45.pages.attach(io: URI.open('https://www.jelouebien.com/wp-content/uploads/2018/02/Illustration_Bail_Type_Location_Vide_loi_ALUR.png'), filename: 'X.jpg', content_type: 'application/pdf')
document45.save!
document46 = Document.create!(name: "Contrat d'assurance", category: "Assurance habitation", housing_id: housing12.id)
document46.pages.attach(io: URI.open('https://www.fichier-pdf.fr/2017/08/17/attestations-d-assurance/preview-attestations-d-assurance-1.jpg'), filename: 'X.jpg', content_type: 'application/pdf')
document46.save!
document47 = Document.create!(name: "Derni??re quittance", category: "Quittance de loyer", housing_id: housing12.id)
document47.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document47.save!
document48 = Document.create!(name: "Avant-derni??re quittance", category: "Quittance de loyer", housing_id: housing12.id)
document48.pages.attach(io: URI.open('https://www.captain.legal/img/quittance-de-loyer.png'), filename: 'X.jpg', content_type: 'application/pdf')
document48.save!

p "#{Document.count} documents created"




