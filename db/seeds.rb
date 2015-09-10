require 'faker'


# Create users

5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: "helloworld"
  )
  user.skip_confirmation!
  user.save
end
users = User.all

# Create items
25.times do
  item = Item.create(
    user: users.sample,
    name: Faker::Lorem.sentence

  )
  item.update_attribute(:created_at, rand(10.minutes .. 6.days).ago)
end

puts "#{User.count} users created"
puts "#{Item.count} items created"
