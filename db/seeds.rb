# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

puts "Destroy old messages & chatrooms"
Message.destroy_all
Chatroom.destroy_all
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
felix = User.create!(email: "f@gmail.com", password: "azerty", xp: 0, bio: "Passioné de moto et de sport, je souhaite participer à l'amélioration de ma ville", nickname: "Felix", city_id: paris.id, grade: "", photo_url: "https://images.unsplash.com/photo-1546994372-f636adc59e4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
manu = User.create!(email: "mm@gmail.com", password: "azerty", xp: 0, bio: "Echilada lover! J'adore me promener en ville avec mon chien.", nickname: "Manu", city_id: paris.id, grade: "", photo_url: "https://images.unsplash.com/photo-1542995719-06bfa52c0e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
manu2 = User.create!(email: "mm2@gmail.com", password: "azerty", xp: 0, bio: "Echilada lover! J'adore me promener en ville avec mon chien.", nickname: "Manu", city_id: stmalo.id, grade: "", photo_url: "https://images.unsplash.com/photo-1542995719-06bfa52c0e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin = User.create!(email: "m@gmail.com", password: "azerty", xp: 0, bio: "Musicien dans l'âme, je suis très intéressé par la culture et j'aimerai participer au développement local.", nickname: "Marin", city_id: paris.id, grade: "", photo_url:"https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin2 = User.create!(email: "m2@gmail.com", password: "azerty", xp: 0, bio: "Musicien dans l'âme, je suis très intéressé par la culture et j'aimerai participer au développement local.", nickname: "Marin", city_id: rennes.id, grade: "", photo_url:"https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
py = User.create!(email: "py@gmail.com", password: "azerty", xp: 0, bio: "Nouvel arrivant en ville, j'espère pouvoir apporter mes idées à la communauté!", nickname: "Py", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1523477914898-f467a88201d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
simon = User.create!(email: "s@gmail.com", password: "azerty", xp: 0, bio: "Lillois depuis toujours, j'ai envie de participer à l'élaboration de nouveaux projets. Comptez sur moi :)", nickname: "Simon", pro: true, city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
jordane2 = User.create!(email: "j2@gmail.com", password: "azerty", xp: 0, bio: "Passioné de cinéma et de jeux, j'espère pouvoir participer à rendre la ville plus vivante et interactive! ", nickname: "Jordane", pro: true, city_id: marseille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
remi2 = User.create!(email: "r2@gmail.com", password: "azerty", xp: 0, bio: "J'aime l'organisation et les choses bien faites!", nickname: "Remi", pro: true, city_id: bordeaux.id, grade: "", photo_url: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
camille2 = User.create!(email: "c2@gmail.com", password: "azerty", xp: 0, bio: "Chanteuse dans l'âme, je sors beaucoup le soir et j'aime les villes qui ne dorment jamais!", nickname: "Camille", city_id: bordeaux.id, grade: "", photo_url: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
jp = User.create!(email: "jp@gmail.com", password: "azerty", xp: 0, bio: "", nickname: "Jean-Pierre", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
jordane = User.create!(email: "j@gmail.com", password: "azerty", xp: 0, bio: "Passioné de cinéma et de jeux, j'espère pouvoir participer à rendre la ville plus vivante et interactive! ", nickname: "Jordane", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
remi = User.create!(email: "r@gmail.com", password: "azerty", xp: 0, bio: "J'aime l'organisation et les choses bien faites!", nickname: "Remi", pro: true, city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
camille = User.create!(email: "c@gmail.com", password: "azerty", xp: 0, bio: "Chanteuse dans l'âme, je sors beaucoup le soir et j'aime les villes qui ne dorment jamais!", nickname: "Camille", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marie = User.create!(email: "mar@gmail.com", password: "azerty", xp: 0, bio: "Toujours à vélo, j'espère pouvoir voter pour des idées qui permettent d'améliorer la mobilité urbaine :)", nickname: "Marie", city_id: lille.id, grade: "", photo_url: "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
puts "User ok..."

puts "Create Categories"
ecologie = Category.create!(name: "Ecologie", image: '<i class="fas fa-leaf"></i>')
transports = Category.create!(name: "Transports", image: '<i class="fas fa-bus"></i>')
securite = Category.create!(name: "Sécurité", image: '<i class="fas fa-cctv"></i>')
sante = Category.create!(name: "Santé", image: '<i class="fas fa-first-aid"></i>')
culture = Category.create!(name: "Culture", image: '<i class="fas fa-theater-masks"></i>')
sport = Category.create!(name: "Sport", image: '<i class="fas fa-baseball-ball"></i>')
urbanisme = Category.create!(name: "Urbanisme", image: '<i class="fas fa-building"></i>')
puts "Categories ok..."

puts "create pulses"
# paris
p27 = Pulse.create!(fake_votes: 122, title: "Créer un potager commun", problem: "aaa", solution: "Mettre en place un potager commun qui pourrait également servir pour amuser les enfants", photo_url: 'https://images.unsplash.com/photo-1584479898061-15742e14f50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmVnZXRhYmxlJTIwZ2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: 'paris', city_id: paris.id , user_id: marin.id)
p1 = Pulse.create!(fake_votes: 1233, title: "Moins de voitures!", solution: "Avoir des parkings souterrains moins chers pour ne pas voir toutes ces voitures garées partout.", problem: "Il faudrait essayer de réduire le nombre de voitures, il en y a trop en ville", photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '18 rue Charlemagne, 75004 paris', city_id: paris.id , user_id: felix.id)
p2 = Pulse.create!(fake_votes: 1005, title: "Créer de nouvelles pistes cyclables", solution: "Sensibiliser les automobilistes à la présence de cyclistes, faire de nouvelles pistes cyclables et mieux les baliser.", problem: "Je ne me sens pas en sécurité lorsque je roule a vélo dans Paris.", photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '10 faubourg Strasbourg Saint-Denis, 75010 paris', city_id: paris.id , user_id: manu.id)
p3 = Pulse.create!(fake_votes: 12, title: "Créer une piscine dans la Seine", solution: "Créer un bassin modulable selon la saison avec peut-être un système de filtre pour assainir l'eau?", problem: "J'aimerai pouvoir me baigner dans la Seine mais c'est dansgereux et l'eau n'est pas propre", photo_url: 'https://images.unsplash.com/photo-1477089884677-c596568bd120?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBhcmlzJTIwc2VpbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '3 place de la Republique, 75011 paris', city_id: paris.id , user_id: felix.id)

p23 = Pulse.create!(fake_votes: 1705, title: "Encadrer les prix de l'immobilier", solution: "Encadrer les loyers qui grimpent du fait des touristes et réguler les résidences secondaires vides la plupart du temps", problem: "En tant que Malouin, ça devient très compliqué de se loger dans notre propre ville", photo_url: 'https://images.unsplash.com/photo-1562063198-fdce8cdf3d5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFyaXMlMjBpbW1ldWJsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '12 rue de la butte aux Cailles, paris', city_id: paris.id , user_id: manu.id)
p24 = Pulse.create!(fake_votes: 305, title: "Rénover le club de curling", solution: "Investir dans ce club historique qui a fait la renomée de notre ville. Pour la joie des enfants", problem: "Mes enfants voudraient faire de la voile mais les locaux sont presque insalubres", photo_url: 'https://images.unsplash.com/photo-1576720488416-cb0dc4735870?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3VybGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '32 rue nationale, paris', city_id: paris.id , user_id: felix.id)
p25 = Pulse.create!(fake_votes: 305, title: "Planter des arbres en centre ville", solution: "Remplacer une place de parking sur 5 par un bel arbre!", problem: "Je trouve que la ville n'est pas assez verte", photo_url: 'https://images.unsplash.com/photo-1513718510232-d9ab9ea932bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGFyaXMlMjB0cmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '3 rue de bruxelles, paris', city_id: paris.id , user_id: manu.id)
p26 = Pulse.create!(fake_votes: 812, title: "Améliorer les transports en commun", solution: "Ajouter une ligne de bus, ou au moins, augmenter la fréquence sur la ligne 12", problem: "J'habite en périphérie et j'ai beaucoup de mal a rentrer chez moi, notamment après 19h", photo_url: 'https://images.unsplash.com/photo-1570665021864-9a6fe251ef6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFyaXMlMjBidXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address:'2 avenue des champs elysees, paris', city_id: paris.id , user_id: marin.id)

# st malo
p4 = Pulse.create!(title: "Devenir capitale de la Bretagne", solution: "Postuler pour devenir capitale de la Bretagne, ou au moins changer chaque année", problem: "Notre ville est très belle et historiquement très riche" , photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '28 chaussée du Sillon, 35400 saint-malo', city_id: stmalo.id , user_id: manu2.id)
p5 = Pulse.create!(title: "Encadrer les prix de l'immobilier", solution: "Encadrer les loyers qui grimpent du fait des touristes et réguler les résidences secondaires vides la plupart du temps", problem: "En tant que Malouin, ça devient très compliqué de se loger dans notre propre ville", photo_url: 'https://images.unsplash.com/photo-1534166755186-fa2d8a5b2b03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Vhc2lkZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '12 rue Saint-Benoist, 35400 saint-malo', city_id: stmalo.id , user_id: manu2.id)
p6 = Pulse.create!(title: "Rénover le club de voile", solution: "Investir dans ce club historique qui a fait la renomée de notre ville. Pour la joie des enfants", problem: "Mes enfants voudraient faire de la voile mais les locaux sont presque insalubres", photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '86 avenue Aristide Briand, 35400 saint-malo', city_id: stmalo.id , user_id: manu2.id)
# rennes
p7 = Pulse.create!(title: "Aménager les bords de la Vilaine", solution: "Passer un bon coup de tondeuse et ramasser les ordures une bonne fois pour toutes", problem: "Certains endroits aux abords de la vilaine sont sales et laissés presque laissés à l'abandon", photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address:'2 rue Robert Arbrissel, 35000 rennes', city_id: rennes.id , user_id: marin2.id)
p8 = Pulse.create!(title: "Nettoyer la rue St Michel plus souvent", solution: "Il faudrait nettoyer avec de l'eau savonneuse tous les jours... Pour éviter les odeurs... Bien cordialement...", problem: "Cette rue est très jolie mais souvent sale... Notamment à partir du jeudi soir... A bon entendeur...", photo_url: 'https://images.unsplash.com/photo-1559894790-52e7d9294de0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmVubmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address:'20 quai Emile Zola, 35000 rennes', city_id: rennes.id , user_id: marin2.id)
p9 = Pulse.create!(title: "Améliorer les transports en commun", solution: "Ajouter une ligne de bus, ou au moins, augmenter la fréquence sur la ligne 12", problem: "J'habite en périphérie et j'ai beaucoup de mal a rentrer chez moi, notamment après 19h", photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address:'place du Parlement de Bretagne, 35000 rennes', city_id: rennes.id , user_id: marin2.id)
# lille
p10 = Pulse.create!(fake_votes: 305, title: "Planter des arbres en centre ville", solution: "Remplacer une place de parking sur 5 par un bel arbre!", problem: "Je trouve que la ville n'est pas assez verte", photo_url: 'https://images.unsplash.com/photo-1630415262240-abcba793af39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGlsbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '39 boulevard Vauban, 59800 lille', city_id: lille.id , user_id: py.id)
p11 = Pulse.create!(fake_votes: 1020, title: "Ouvrir les magasins le dimanche", solution: "Laisser la possibilité aux commerçants d'ouvrir le dimanche, dans le respect des salariés bien évidemment", problem: "J'aimerai pouvoir faire du shopping mais je travailler le samedi", photo_url: 'https://images.unsplash.com/photo-1567449303078-57ad995bd17a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', address: '40 rue de Béthune, 59800 lille', city_id: lille.id , user_id: py.id)
p12 = Pulse.create!(fake_votes: 840, title: "Installer plus d'équipements sportifs dans les parcs", solution: "Installer un parcours sportif et ajouter des équipements dans les parcs et pourquoi pas même dans certaines rues de Lille où il n'y a pas trop de passage.", problem: "J'aimerai faire du sport mais je n'aime pas courir et la salle de sport c'est trop cher", photo_url: 'https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJpa2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '23 rue Gosselet, 59000 lille', city_id: lille.id , user_id: py.id)
p13 = Pulse.create!(fake_votes: 10, title: "Des repas bio pour les cantines des écoles", solution: "Proposer des repas bio, ou au moins avec des produits locaux et de qualité. Une ou deux journées par semaine à la rigueur pour commencer", problem: "Je trouve que les enfants mangent trop de frites et de repas gras à l'école, ça n'est pas une bonne habitude à prendre!", photo_url: 'https://images.unsplash.com/photo-1595183241165-f6ba98b7d4eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2lkcyUyMG1lYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', address: '23 rue Jean Bart, 59000 lille', city_id: lille.id , user_id: simon.id)
p14 = Pulse.create!(fake_votes: 522, title: "Réouvrir le canal rue du Peuple Belge", solution: "Creuser une tranchée dans cette rue qui de toute façons aurait besoin d'un bon coup de rénovation. Un canal à cet endroit rendrait le lieux plus pittoresque", problem: "Lille mériterait de retrouver son aspect d'antan, avec ses canaux qui ont fait sa renomée", photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '25 avenue du Peuple Belge, 59000 lille', city_id: lille.id , user_id: simon.id)
p18 = Pulse.create!(fake_votes: 120, title: "Créer un potager commun", problem: "aaa", solution: "Mettre en place un potager commun qui pourrait également servir pour amuser les enfants", photo_url: 'https://images.unsplash.com/photo-1584479898061-15742e14f50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmVnZXRhYmxlJTIwZ2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: 'lille', city_id: lille.id , user_id: jordane.id)
p19 = Pulse.create!(fake_votes: 1243, title: "Améliorer les transports en commun", problem: "aaa", solution: "Ajouter une ligne de bus, ou au moins, augmenter la fréquence sur la ligne 12", photo_url: 'https://images.unsplash.com/photo-1503001357564-b8d6cf4d868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJ1cyUyMGZyYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: 'lille', city_id: lille.id , user_id: remi.id)
p20 = Pulse.create!(fake_votes: 210, title: "Un parking gratuit à Euratech", problem: "aaa", solution: " Il existe des emplacements vides car en attente de travaux. Autant les utiliser!", photo_url: 'https://images.unsplash.com/photo-1506521781263-d8422e82f27a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFya2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: 'lille', city_id: lille.id , user_id: camille.id)
p21 = Pulse.create!(fake_votes: 420, title: "Créer une piscine dans le Deule", problem: "aaa", solution: "Créer un bassin modulable selon la saison avec peut-être un système de filtre pour assainir l'eau?", photo_url: 'https://images.unsplash.com/photo-1624723563178-6f5d88dc1e7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvb2wlMjByaXZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: 'lille', city_id: lille.id , user_id: marie.id)
p22 = Pulse.create!(fake_votes: 707, title: "Installer un parc à chien", problem: "aaa", solution: "Créer un endroit pour pouvoir promener et éventuellement déposer son chien pour la journée", photo_url: 'https://images.unsplash.com/photo-1624723563178-6f5d88dc1e7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBvb2wlMjByaXZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: 'lille', city_id: lille.id , user_id: jp.id)
# marseille
p15 = Pulse.create!(title: "Augmenter les limitations de vitesse", solution: "On pourrait passer la limitation de vitesse à 70 en ville pour pouvoir rouler à 90 en toute sécurité.", problem: "Je mets de plus en plus de temps pour aller au travail le matin", photo_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', address: '3 rue du rouet, 13000 Marseille', city_id: marseille.id , user_id: jordane2.id)
# bordeaux
p16 = Pulse.create!(title: "Encadrer le prix des loyers", solution: "Encadrer les loyers qui grimpent du fait des touristes et réguler les résidences secondaires vides la plupart du temps", problem: "En tant que Bordelais, ça devient très compliqué de se loger dans notre propre ville", photo_url: 'https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '23 rue saint jean, 33000 bordeaux', city_id: bordeaux.id , user_id: remi2.id)
p17 = Pulse.create!(title: "Ouvrir les magasins le dimanche", solution: "Laisser la possibilité aux commerçants d'ouvrir le dimanche, dans le respect des salariés bien évidemment", problem: "J'aimerai pouvoir faire du shopping mais je travailler le samedi", photo_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', address: '23 rue saint jean, 33000 bordeaux', city_id: bordeaux.id , user_id: camille2.id)
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
PulseCategory.create!(pulse_id: p1.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p2.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p2.id, category_id: sante.id)
PulseCategory.create!(pulse_id: p3.id, category_id: sport.id)
PulseCategory.create!(pulse_id: p4.id, category_id: culture.id)
PulseCategory.create!(pulse_id: p5.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p6.id, category_id: sport.id)
PulseCategory.create!(pulse_id: p7.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p7.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p8.id, category_id: securite.id)
PulseCategory.create!(pulse_id: p8.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p9.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p10.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p10.id, category_id: sante.id)
PulseCategory.create!(pulse_id: p11.id, category_id: culture.id)
PulseCategory.create!(pulse_id: p11.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p12.id, category_id: sport.id)
PulseCategory.create!(pulse_id: p12.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p13.id, category_id: sante.id)
PulseCategory.create!(pulse_id: p14.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p15.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p16.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p17.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p17.id, category_id: culture.id)
PulseCategory.create!(pulse_id: p18.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p19.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p20.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p21.id, category_id: sport.id)
PulseCategory.create!(pulse_id: p22.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p23.id, category_id: urbanisme.id)
PulseCategory.create!(pulse_id: p24.id, category_id: sport.id)
PulseCategory.create!(pulse_id: p25.id, category_id: ecologie.id)
PulseCategory.create!(pulse_id: p26.id, category_id: transports.id)
PulseCategory.create!(pulse_id: p27.id, category_id: ecologie.id)

puts 'Pulse Categoy ok...'
puts "All is GooooOOOooooOOOod..."
