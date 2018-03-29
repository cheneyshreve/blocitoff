require 'faker'

10.times do
  User.create!(
  email: Faker::Internet.unique.email,
  password: "password",
  password_confirmation: "password"
  )
end
users = User.all

10.times do
  Item.create!(
    name: Faker::Hipster.sentence(4),
    user: users.sample
  )
end

seed_user = User.create!(
  email: "admin@admin.com",
  password: "password",
  password_confirmation: "password"
)

5.times do
  Item.create!(
    name: Faker::Hipster.sentence(4),
    user: seed_user
  )
end
items = Item.all

puts "Seed finished."
puts "#{users.count} users created"
puts "#{items.count} to-do's created"
