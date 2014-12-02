require 'faker'
# Create users
7.times do 
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
