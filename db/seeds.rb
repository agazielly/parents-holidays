# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Governess.destroy_all
User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    firstname: 'Jean',
    lastname: 'Dupont',
    email: 'jean@dupont.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378877/warren-wong-VVEwJJRRHgk-unsplash_tortjc.jpg',
  },
  {
    firstname: 'David',
    lastname: 'Malka',
    email: 'david@malka.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/jack-finnigan-rriAI0nhcbc-unsplash_vpmxjo.jpg',
  },
  {
    firstname: 'José',
    lastname: "Villas",
    email: 'josé@villas.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378877/warren-wong-iOWry_4xGmc-unsplash_swiqzw.jpg',
  },
  {
    firstname: 'edouardo',
    lastname: 'lopez',
    email: 'edouardo@lopez.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378876/jurica-koletic-7YVZYZeITc8-unsplash_eciscn.jpg',
  },
  {
    firstname: 'Pierre',
    lastname: 'Sudre',
    email: 'pierre@sudre.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/janko-ferlic-specialdaddy-GWFffQS5eWU-unsplash_q8kcpy.jpg',
  },
  {
    firstname: 'Camille',
    lastname: 'Joffre',
    email: 'camille@joffre.com',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378877/matheus-ferrero-pg_WCHWSdT8-unsplash_dhj8jr.jpg',
  },
  {
    firstname: 'Audrey',
    lastname: 'Stefasnecu',
    email: 'audrey.stefanescu',
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378876/vladislav-nikonov-TJVDji1_In4-unsplash_mwdyxl.jpg',
  },
  {
    firstname: "Graziela",
    lastname: "Miro",
    email: "graziela@miro.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/joe-gardner-pAs4IM6OGWI-unsplash_bvbqzw.jpg',
  },
  {
    firstname: "Maria",
    lastname: "Cruz",
    email: "maria@cruz.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/almos-bechtold-3402kvtHhOo-unsplash_sn7iwx.jpg',
  },
  {
    firstname: "Samanta",
    lastname: "Rodriguez",
    email: "samanta@rodriguez.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378874/eduardo-dutra-E4CyJv-N_z8-unsplash_kf39ug.jpg',
  },
  {
    firstname: "Julie",
    lastname: "Garnier"
    email: "julie@garnier.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378874/ayo-ogunseinde-THIs-cpyebg-unsplash_phns9d.jpg',
  },
  {
    firstname: "Malika",
    lastname: "Ben Nassen",
    email: "malika@bennassen.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378874/ayo-ogunseinde-THIs-cpyebg-unsplash_phns9d.jpg',
  },
  {
    firstname: "Hishem",
    lastname: "Mektoub",
    email: "hishem@mektoub.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378874/christiana-rivers-18i6oUipDtI-unsplash_vopxb8.jpg',
  },
  {
    firstname: "Daphné",
    lastname: "Berrebi",
    email: "daphné@berrebi.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378874/allef-vinicius-C_1jjFJioWg-unsplash_zvsrqb.jpg',
  },
  {
    firstname: "Clarence",
    lastname: "Delarue",
    email: "clarence.delarue",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/joe-gardner-pAs4IM6OGWI-unsplash_bvbqzw.jpg',
  },
]
User.create!(users_attributes)
puts 'Users created'

  puts 'Creating governesses...'

  User.all.each do |user|
    Governess.create!(
      price: 100,
      location: %w(Cap Ferret, Ibiza).sample,
      description: Faker::TvShows::GameOfThrones.quote,
      user_id: user.id)
  end

puts 'Finished!'
