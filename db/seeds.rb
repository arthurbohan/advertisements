# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create([
  {
    email: 'admin@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    role: 'admin'
  },
  {
    email: 'user@gmail.com',
    password: 'password',
    password_confirmation: 'password',
  }
  ])

  p "Created #{User.count} users."

Advertisement.delete_all
Advertisement.create([
  {
    user_id: User.last.id,
    name: 'First advertisement',
  },
  {
    user_id: User.last.id,
    name: 'Second advertisement',
  }
  ])

  p "Created #{Advertisement.count} advertisements."
