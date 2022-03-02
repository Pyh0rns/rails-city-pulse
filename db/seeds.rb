# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#


puts "Destroy old cities"
City.destroy_all
puts "Destroy old users"
User.destroy_all

puts "Create new cities"
lille = City.create!(name: 'Lille', photo_url: 'https://jeveuxaider.fra1.digitaloceanspaces.com/public/production/6781/conversions/5KgQeXfWckoDgaiaRj1FTysksnY6h6-large.jpg')
paris = City.create!(name: 'Paris', photo_url: 'https://a.cdn-hotels.com/gdcs/production167/d32/70860665-c6b2-4b40-82e9-37b4bea5648e.jpg')
marseille = City.create!(name: 'Marseille', photo_url: 'https://madeinmarseille-data.s3.eu-west-3.amazonaws.com/actualites-marseille/2021/06/01153913/grande-parade-maritime-pharo-1400x788.jpeg')
bordeaux = City.create!(name: 'Bordeaux', photo_url: 'https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2021.2F03.2F08.2F10465022-b38a-4bd1-b2a6-e3fa47b75ae5.2Ejpeg/1150x647/background-color/ffffff/quality/70/top-10-des-meilleurs-quartiers-de-bordeaux.jpg')
stmalo = City.create!(name: 'St Malo', photo_url: 'https://www.tourismebretagne.com/app/uploads/crt-bretagne/2018/11/thumbs/saint-malo-antoine2k-fotolia-5-1920x960-crop-1615917159.jpg')
rennes = City.create!(name: 'Rennes', photo_url: 'https://www.okvoyage.com/wp-content/uploads/2020/10/rennes-france.jpeg')
puts "City ok..."
puts "Create new users"
felix = User.create!(email: "f@gmail.com", password: "azerty", nickname: "Felix", city_id: paris.id, grade: "Champion", xp: 1000, pro: true)
manu = User.create!(email: "mm@gmail.com", password: "azerty", nickname: "Manu", city_id: stmalo.id, grade: "Champion", xp: 1200, pro: true)
marin = User.create!(email: "m@gmail.com", password: "azerty", nickname: "Marin", city_id: rennes.id, grade: "Challenger", xp: 100, pro: true)
py = User.create!(email: "py@gmail.com", password: "azerty", nickname: "Py", city_id: lille.id, grade: "Novice", xp: 10, pro: true)
puts "User ok..."




puts "All is GooooOOOooooOOOod..."
