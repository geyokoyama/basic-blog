# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  { username: "First User", email: "first@user.com", password: "asdfASDF123" },
  { username: "Second User", email: "second@user.com", password: "asdfASDF123" },
  { username: "Third User", email: "third@user.com", password: "asdfASDF123" },
  { username: "Fourth User", email: "fourth@user.com", password: "asdfASDF123" },
  { username: "Fifth User", email: "fifth@user.com", password: "asdfASDF123" },
  { username: "Admin User", email: "admin@user.com", password: "asdfASDF123" }
])

Article.create([
  { title: "First Article", description: "First Description", user_id: 1 },
  { title: "Second Article", description: "Second Description", user_id: 1 },
  { title: "Third Article", description: "Third Description", user_id: 1 },
  { title: "Fourth Article", description: "Fourth Description", user_id: 2 },
  { title: "Fifth Article", description: "Fifth Description", user_id: 3 },
  { title: "Sixth Article", description: "Sixth Description", user_id: 6 }
])
