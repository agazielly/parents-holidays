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
    id: 1
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 2
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 3
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 4
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 5
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 6
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 7
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 8
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 9
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 10
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 11
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 12
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 13
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 14
  },
  {
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    id: 15
  },
]
User.create!(users_attributes)
User.save!
puts 'Users created'

puts 'Creating governesses...'
governesses_attributes = [
  {
    price:         100,
    location:     'Lyon',
    description:  'Experimented governess with references',
    user_id:        1
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        2
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        3
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        4
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        5
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        6
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        7
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        8
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        9
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        10
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        11
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        12
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        13
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        14
  },
  {
    price:         100,
    location:     Faker::TvShows::GameOfThrones.city,
    description:  Faker::TvShows::GameOfThrones.quote,
    user_id:        15
  },
]
Governess.create!(governesses_attributes)
Governess.save!
puts 'Finished!'
