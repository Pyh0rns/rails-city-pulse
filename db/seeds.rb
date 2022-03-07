# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

PulseCategory.destroy_all
puts "Destroy old categories"
puts "Destroy old favorites"
Favorite.destroy_all
puts "Destroy old pulses"
Pulse.destroy_all
puts "Destroy old users"
User.destroy_all
puts "Destroy old pulse categories"
Category.destroy_all
puts "Destroy old cities"
City.destroy_all

puts "Create new cities"
lille = City.create!(name: 'Lille', photo_url: 'https://jeveuxaider.fra1.digitaloceanspaces.com/public/production/6781/conversions/5KgQeXfWckoDgaiaRj1FTysksnY6h6-large.jpg')
paris = City.create!(name: 'Paris', photo_url: 'https://a.cdn-hotels.com/gdcs/production167/d32/70860665-c6b2-4b40-82e9-37b4bea5648e.jpg')
marseille = City.create!(name: 'Marseille', photo_url: 'https://madeinmarseille-data.s3.eu-west-3.amazonaws.com/actualites-marseille/2021/06/01153913/grande-parade-maritime-pharo-1400x788.jpeg')
bordeaux = City.create!(name: 'Bordeaux', photo_url: 'https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2021.2F03.2F08.2F10465022-b38a-4bd1-b2a6-e3fa47b75ae5.2Ejpeg/1150x647/background-color/ffffff/quality/70/top-10-des-meilleurs-quartiers-de-bordeaux.jpg')
stmalo = City.create!(name: 'St Malo', photo_url: 'https://www.tourismebretagne.com/app/uploads/crt-bretagne/2018/11/thumbs/saint-malo-antoine2k-fotolia-5-1920x960-crop-1615917159.jpg')
rennes = City.create!(name: 'Rennes', photo_url: 'https://www.okvoyage.com/wp-content/uploads/2020/10/rennes-france.jpeg')
puts "City ok..."

puts "Create new users"
felix = User.create!(email: "f@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Felix", city_id: paris.id, grade: "", photo_url: "https://images.unsplash.com/photo-1546994372-f636adc59e4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
manu = User.create!(email: "mm@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Manu", city_id: stmalo.id, grade: "", photo_url: "https://images.unsplash.com/photo-1542995719-06bfa52c0e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin = User.create!(email: "m@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Marin", city_id: rennes.id, grade: "", photo_url:"https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
py = User.create!(email: "py@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Py", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1523477914898-f467a88201d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
simon = User.create!(email: "s@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Simon", pro: true, city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
jordane = User.create!(email: "j@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Jordane", pro: true, city_id: marseille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
remi = User.create!(email: "r@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Remi", pro: true, city_id: bordeaux.id, grade: "", photo_url: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
camille = User.create!(email: "c@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Camille", city_id: bordeaux.id, grade: "", photo_url: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marie = User.create!(email: "mar@gmail.com", password: "azerty", xp: 0, bio: Faker::Lorem.paragraphs, nickname: "Marie", pro: true, city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
puts "User ok..."

puts "Create Categories"
ecologie = Category.create!(name: "Ecologie", image: '🍀')
transports = Category.create!(name: "Transports", image: '🚇')
securite = Category.create!(name: "Sécurité", image: '👮')
sante = Category.create!(name: "Santé", image: '👨‍⚕️')
culture = Category.create!(name: "Culture", image: '🧑‍🎨')
sport = Category.create!(name: "Sport", image:'🤸‍♀️')
puts "Categories ok..."

puts "create pulses"
# paris
p1 = Pulse.create!(title: "Moins de voitures!", solution: "Avoir des parkings souterrains moins chers pour ne pas voir toutes ces voitures garées partout.", problem: "Il faudrait essayer de réduire le nombre de voitures, il en y a trop en ville", status: 'posté', photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '18 rue Charlemagne, 75004 paris', city_id: paris.id , user_id: felix.id)
p2 = Pulse.create!(title: "Créer de nouvelles pistes cyclables", solution: "Sensibiliser les automobilistes à la présence de cyclistes, faire de nouvelles pistes cyclables et mieux les baliser.", problem: "Je ne me sens pas en sécurité lorsque je roule a vélo dans Paris.", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '10 faubourg Strasbourg Saint-Denis, 75010 paris', city_id: paris.id , user_id: felix.id)
p3 = Pulse.create!(title: "Créer une piscine dans la Seine", solution: "Créer un bassin modulable selon la saison avec peut-être un système de filtre pour assainir l'eau?", problem: "J'aimerai pouvoir me baigner dans la Seine mais c'est dansgereux et l'eau n'est pas propre", status: 'validé', photo_url: 'https://images.unsplash.com/photo-1487452066049-a710f7296400?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHVyYmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '3 place de la Republique, 75011 paris', city_id: paris.id , user_id: felix.id)
# st malo
p4 = Pulse.create!(title: "Devenir capitale de la Bretagne", solution: "Postuler pour devenir capitale de la Bretagne, ou au moins changer chaque année", problem: "Notre ville est très belle et historiquement très riche", status: 'posté' , photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '28 chaussée du Sillon, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
p5 = Pulse.create!(title: "Encadrer les prix de l'immobilier", solution: "Encadrer les loyers qui grimpent du fait des touristes et réguler les résidences secondaires vides la plupart du temps", problem: "En tant que Malouin, ça devient très compliqué de se loger dans notre propre ville", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1534166755186-fa2d8a5b2b03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Vhc2lkZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '12 rue Saint-Benoist, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
p6 = Pulse.create!(title: "Rénover le club de voile", solution: "Investir dans ce club historique qui a fait la renomée de notre ville. Pour la joie des enfants", problem: "Mes enfants voudraient faire de la voile mais les locaux sont presque insalubres", status: 'validé', photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '86 avenue Aristide Briand, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
# rennes
p7 = Pulse.create!(title: "Aménager les bords de la Vilaine", solution: "Passer un bon coup de tondeuse et ramasser les ordures une bonne fois pour toutes", problem: "Certains endroits aux abords de la vilaine sont sales et laissés presque laissés à l'abandon", status: 'posté', photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address:'2 rue Robert Arbrissel, 35000 rennes', city_id: rennes.id , user_id: marin.id)
p8 = Pulse.create!(title: "Nettoyer la rue St Michel plus souvent", solution: "Il faudrait nettoyer avec de l'eau savonneuse tous les jours... Pour éviter les odeurs... Bien cordialement...", problem: "Cette rue est très jolie mais souvent sale... Notamment à partir du jeudi soir... A bon entendeur...", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1559894790-52e7d9294de0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVubmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address:'20 quai Emile Zola, 35000 rennes', city_id: rennes.id , user_id: marin.id)
p9 = Pulse.create!(title: "Améliorer les transports en commun", solution: "Ajouter une ligne de bus, ou au moins, augmenter la fréquence sur la ligne 12", problem: "J'habite en périphérie et j'ai beaucoup de mal a rentrer chez moi, notamment après 19h", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address:'place du Parlement de Bretagne, 35000 rennes', city_id: rennes.id , user_id: marin.id)
# lille
p10 = Pulse.create!(title: "Planter des arbres en centre ville", solution: "Remplacer une place de parking sur 5 par un bel arbre!", problem: "Je trouve que la ville n'est pas assez verte", status: 'posté', photo_url: 'https://images.unsplash.com/photo-1630415262240-abcba793af39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGlsbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '39 boulevard Vauban, 59800 lille', city_id: lille.id , user_id: py.id)
p11 = Pulse.create!(title: "Ouvrir les magasins le dimanche", solution: "Laisser la possibilité aux commerçants d'ouvrir le dimanche, dans le respect des salariés bien évidemment", problem: "J'aimerai pouvoir faire du shopping mais je travailler le samedi", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1508766917616-d22f3f1eea14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFyJTIwY2FmZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '40 rue de Béthune, 59800 lille', city_id: lille.id , user_id: py.id)
p12 = Pulse.create!(title: "Installer plus d'équipements sportifs dans les parcs", solution: "Installer un parcours sportif et ajouter des équipements dans les parcs et pourquoi pas même dans certaines rues de Lille où il n'y a pas trop de passage.", problem: "J'aimerai faire du sport mais je n'aime pas courir et la salle de sport c'est trop cher", status: 'validé', photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '23 rue Gosselet, 59000 lille', city_id: lille.id , user_id: py.id)
p13 = Pulse.create!(title: "Des repas bio pour les cantines des écoles", solution: "Proposer des repas bio, ou au moins avec des produits locaux et de qualité. Une ou deux journées par semaine à la rigueur pour commencer", problem: "Je trouve que les enfants mangent trop de frites et de repas gras à l'école, ça n'est pas une bonne habitude à prendre!", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1487452066049-a710f7296400?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHVyYmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '23 rue Jean Bart, 59000 lille', city_id: lille.id , user_id: simon.id)
p14 = Pulse.create!(title: "Réouvrir le canal rue du Peuple Belge", solution: "Creuser une tranchée dans cette rue qui de toute façons aurait besoin d'un bon coup de rénovation. Un canal à cet endroit rendrait le lieux plus pittoresque", problem: "Lille mériterait de retrouver son aspect d'antan, avec ses canaux qui ont fait sa renomée", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '25 rue Jean Bart, 59000 lille', city_id: lille.id , user_id: simon.id)
# marseille
p15 = Pulse.create!(title: "Augmenter les limitations de vitesse", solution: "On pourrait passer la limitation de vitesse à 70 en ville pour pouvoir rouler à 90 en toute sécurité.", problem: "Je mets de plus en plus de temps pour aller au travail le matin", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '3 rue du rouet, 13000 Marseille', city_id: marseille.id , user_id: jordane.id)
# bordeaux
p16 = Pulse.create!(title: "Encadrer le prix des loyers", solution: "Encadrer les loyers qui grimpent du fait des touristes et réguler les résidences secondaires vides la plupart du temps", problem: "En tant que Bordelais, ça devient très compliqué de se loger dans notre propre ville", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '23 rue saint jean, 33000 bordeaux', city_id: bordeaux.id , user_id: remi.id)
p17 = Pulse.create!(title: "Ouvrir les magasins le dimanche", solution: "Laisser la possibilité aux commerçants d'ouvrir le dimanche, dans le respect des salariés bien évidemment", problem: "J'aimerai pouvoir faire du shopping mais je travailler le samedi", status: 'vote en cours', photo_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '23 rue saint jean, 33000 bordeaux', city_id: bordeaux.id , user_id: camille.id)
puts "Pulse ok..."

puts "create favorites"
Favorite.create!(pulse_id: p10.id, user_id: py.id)
Favorite.create!(pulse_id: p11.id, user_id: py.id)
Favorite.create!(pulse_id: p10.id, user_id: simon.id)
Favorite.create!(pulse_id: p10.id, user_id: marie.id)
Favorite.create!(pulse_id: p13.id, user_id: marie.id)
puts "Favorites ok..."

puts "Create Pulse Categories"
PulseCategory.create!(pulse_id: p1.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p2.id, category_id:transports.id)
PulseCategory.create!(pulse_id: p3.id, category_id:securite.id)
PulseCategory.create!(pulse_id: p4.id, category_id:sante.id)
PulseCategory.create!(pulse_id: p5.id, category_id:culture.id)
PulseCategory.create!(pulse_id: p6.id, category_id:sport.id)
PulseCategory.create!(pulse_id: p7.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p8.id, category_id:transports.id)
PulseCategory.create!(pulse_id: p9.id, category_id:securite.id)
PulseCategory.create!(pulse_id: p10.id, category_id:sante.id)
PulseCategory.create!(pulse_id: p11.id, category_id:culture.id)
PulseCategory.create!(pulse_id: p12.id, category_id:sport.id)
PulseCategory.create!(pulse_id: p13.id, category_id:culture.id)
PulseCategory.create!(pulse_id: p14.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p15.id, category_id:transports.id)
PulseCategory.create!(pulse_id: p16.id, category_id:securite.id)
PulseCategory.create!(pulse_id: p17.id, category_id:sante.id)
PulseCategory.create!(pulse_id: p17.id, category_id:ecologie.id)
puts 'Pulse Categoy ok...'
puts "All is GooooOOOooooOOOod..."
