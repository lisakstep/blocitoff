require 'faker'

# Create users
4.times do 
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
puts "You have generated #{User.count} users."
users = User.all

admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld'
  )
admin.skip_confirmation!
admin.save!

# Create list for each user
# users.each do |person|
#   list = List.create!(
#     user: person,
#     title: Faker::Lorem.sentence
#     )
#   end
 lists = List.all
 puts "#{List.count} lists generated."

# Create items for the lists
80.times do
  item = Item.create!(
    list: lists.sample,
    content: Faker::Lorem.word
    )
end
puts "#{Item.count} todo items generated"


