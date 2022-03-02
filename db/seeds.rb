# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

puts "Destroy old pulses"
Pulse.destroy_all
puts "Destroy old users"
User.destroy_all
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
felix = User.create!(email: "f@gmail.com", password: "azerty", bio: Faker::Lorem.paragraphs, nickname: "Felix", city_id: paris.id, grade: "Champion", xp: 1000, pro: true, photo_url: "https://images.unsplash.com/photo-1546994372-f636adc59e4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
manu = User.create!(email: "mm@gmail.com", password: "azerty", bio: Faker::Lorem.paragraphs, nickname: "Manu", city_id: stmalo.id, grade: "Champion", xp: 1200, photo_url: "https://images.unsplash.com/photo-1542995719-06bfa52c0e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin = User.create!(email: "m@gmail.com", password: "azerty", bio: Faker::Lorem.paragraphs, nickname: "Marin", city_id: rennes.id, grade: "Challenger", xp: 100, photo_url:"https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
py = User.create!(email: "py@gmail.com", password: "azerty", bio: Faker::Lorem.paragraphs, nickname: "Py", city_id: lille.id, grade: "Novice", xp: 10, pro: true, photo_url: "https://images.unsplash.com/photo-1523477914898-f467a88201d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3F1YXJlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
puts "User ok..."

puts "create pulses"
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'posté', photo_url: 'https://source.unsplash.com/random', address: '18 rue Charlemagne, 75004 paris', city_id: paris.id , user_id: felix.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'vote en cours', photo_url: 'https://source.unsplash.com/random', address: '10 faubourg Strasbourg Saint-Denis, 75010 paris', city_id: paris.id , user_id: felix.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'validé', photo_url: 'https://source.unsplash.com/random', address: '3 place de la Republique, 75011 paris', city_id: paris.id , user_id: felix.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'posté' , photo_url: 'https://source.unsplash.com/random', address: '28 chaussée du Sillon, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'vote en cours', photo_url: 'https://source.unsplash.com/random', address: '12 rue Saint-Benoist, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'validé', photo_url: 'https://source.unsplash.com/random', address: '86 avenue Aristide Briand, 35400 saint-malo', city_id: stmalo.id , user_id: manu.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'posté', photo_url: 'https://source.unsplash.com/random', address:'2 rue Robert Arbrissel, 35065 rennes', city_id: rennes.id , user_id: marin.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'vote en cours', photo_url: 'https://source.unsplash.com/random', address:'20 quai Emile Zola, 35000 rennes', city_id: rennes.id , user_id: marin.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'vote en cours', photo_url: 'https://source.unsplash.com/random', address:'place du Parlement de Bretagne, 35000 rennes', city_id: rennes.id , user_id: marin.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'posté', photo_url: 'https://source.unsplash.com/random', address: '39 boulevard Vauban, 59800 lille', city_id: lille.id , user_id: py.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'vote en cours', photo_url: 'https://source.unsplash.com/random', address: '40 rue de Béthune, 59800 lille', city_id: lille.id , user_id: py.id)
Pulse.create!(title: Faker::Quote.singular_siegler, solution: Faker::Lorem.paragraphs, problem: Faker::Lorem.paragraphs, status: 'validé', photo_url: 'https://source.unsplash.com/random', address: '23 rue Gosselet, 59000 lille', city_id: lille.id , user_id: py.id)
puts "Pulse ok..."

puts "All is GooooOOOooooOOOod..."
