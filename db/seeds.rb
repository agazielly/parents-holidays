# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Booking.destroy_all
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
    email: 'audrey@stefanescu.com',
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
    lastname: "Garnier",
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
    email: "clarence@delarue.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566378875/joe-gardner-pAs4IM6OGWI-unsplash_bvbqzw.jpg',
  },

    {
    firstname: "Aurore",
    lastname: "Delplace",
    email: "aurore@delay.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564221/samples/governesses_supplement/Aurore_Delplace_j2zkpx.jpg',
  },

  {
    firstname: "Antoine",
    lastname: "Sevran",
    email: "antoine@sevran.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564219/samples/governesses_supplement/Antoine_Sevran_nzxrr6.jpg',
  },

  {
    firstname: "Angel",
    lastname: "singer",
    email: "angel@singer.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564217/samples/governesses_supplement/Angele_Singer_u5zuwp.jpg',
  },

  {
    firstname: "Pierre",
    lastname: "Niney",
    email: "pierre@niney.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564257/samples/governesses_supplement/Pierre_Niney_y6m1st.jpg',
  },

  {
    firstname: "Gaspard",
    lastname: "Ulliel",
    email: "gaspard@ulliel.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564241/samples/governesses_supplement/Gaspard_Ulliel_c2x56o.jpg',
  },

  {
    firstname: "François",
    lastname: "Casimir",
    email: "françois@casimir.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564240/samples/governesses_supplement/Franc%CC%A7ois_Casimir_r7hnnh.jpg',
  },

  {
    firstname: "Oscar",
    lastname: "Casas",
    email: "oascar@casas.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564256/samples/governesses_supplement/Oscar_Casas_bmyhju.jpg',
  },

  {
    firstname: "Carmelo",
    lastname: "Lopez",
    email: "carmelo@lopez.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564222/samples/governesses_supplement/Carmelo_Lopez_o0ez8t.jpg',
  },

    {
    firstname: "Jaime",
    lastname: "Lorente",
    email: "jaime@lorente.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564244/samples/governesses_supplement/Jamie_Lorente_kr5gm7.jpg',
  },

  {
    firstname: "Aïssa",
    lastname: "Maïga",
    email: "aissa@maiga.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564213/samples/governesses_supplement/Aissa_Maiga_ti4v5v.jpg',
  },

  {
    firstname: "Lola",
    lastname: "Le Lann",
    email: "lola@lelann.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564251/samples/governesses_supplement/Lola_Le_Lann_mfipih.jpg',
  },

  {
    firstname: "Alice",
    lastname: "Isaaz",
    email: "alice@isaaz.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564215/samples/governesses_supplement/Alice_Isaaz_Cabourg_p5u8bt.jpg',
  },

   {
    firstname: "Noemie",
    lastname: "Merlant",
    email: "noemie@merlant.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564255/samples/governesses_supplement/Noe%CC%81mie_Merlant_yczcud.jpg',
  },

  {
    firstname: "Christa",
    lastname: "Theret",
    email: "christa@theret.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564226/samples/governesses_supplement/Christa_Theret_zbevig.jpg',
  },

  {
    firstname: "Jérémy",
    lastname: "Capone",
    email: "jeremy@capone.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564246/samples/governesses_supplement/Je%CC%81re%CC%81my_Capone_d9g7ml.jpg',
  },

  {
    firstname: "Marion",
    lastname: "Chabassol",
    email: "marion@chabassol.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564253/samples/governesses_supplement/Marion_Chabassol_drqlgr.jpg',
  },

    {
    firstname: "Emile",
    lastname: "Bertherat",
    email: "emile@bertherat.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564238/samples/governesses_supplement/Emile_Bertherat_zh526v.jpg',
  },

  {
    firstname: "Adèle",
    lastname: "Choubard",
    email: "adèle@choubard.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564200/samples/governesses_supplement/Ade%CC%80le_Choubard_bkij3l.jpg',
  },

  {
    firstname: "Jordan",
    lastname: "Rodrigues",
    email: "jordan@rodrigues.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564247/samples/governesses_supplement/Jordan_Rodrigues_dt1uj0.jpg',
  },

  {
    firstname: "Georgie",
    lastname: "Henley",
    email: "georgie@henley.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564243/samples/governesses_supplement/Georgie_Henley_nascfr.jpg',
  },

  {
    firstname: "Kierna",
    lastname: "Shipka",
    email: "kierna@shipka.com",
    password: 'password',
    picture: 'https://res.cloudinary.com/agazielly/image/upload/v1566564249/samples/governesses_supplement/Kierna_Shipka_uqpstb.jpg',
  }
]

users_attributes.each do |attribute|
  user = User.new(attribute)
  user.save!
end

  User.all.each do |user|
    Governess.create!(
      price: 100,
      location: %w(Cap-Ferret Ibiza).sample,
      category: %w(Governess Driver Cook Gardener).sample,
      description: Faker::TvShows::GameOfThrones.quote,
      user_id: user.id)
  end

booking = Booking.new
booking.location = 'Ibiza'
booking.checkin = '10/09/2019'
booking.checkout = '18/09/2019'
booking.total_price = 1000
booking.user_id = User.last.id
booking.governess_id = Governess.last.id

booking.save!

bookingNiney = Booking.new
booking.location = 'Ibiza'
booking.checkin = '24/08/2019'
booking.checkout = '30/09/2019'
booking.total_price = 700
booking.user_id = 1
booking.governess_id = 19

puts 'Finished!'
