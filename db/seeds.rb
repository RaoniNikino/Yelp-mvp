# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0606060606', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0707070707', category: 'italian' }
bel_ami = { name: 'Bel Ami', address: '1 rue Test, Rueil Malmaison', phone_number: '0505050505', category: 'french' }
maison_de_kyoto = { name: 'Maison de Kyoto', address: '3 rue du Top, Vésinet', phone_number: '0404040404', category: 'japanese' }
mc_donalds = { name: 'Mc Donalds', address: '5 rue de la Bouffe, Chatou', phone_number: '0303030303', category: 'french' }

[dishoom, pizza_east, bel_ami, maison_de_kyoto, mc_donalds].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
