require 'faker'

nbuser = 50
nbcity = 50
users = []
cities = []

nbuser.times do |x|
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.words(number: 6),
      email: Faker::Internet.email,
      age: rand(25..80), 
      )
      users << user
    puts "Seeding User nb#{x}"
  end

  nbcity.times do |x|
    city = City.create(
    name: Faker::Address.city
    zip_code: rand(32000..35000)
    )
    cities << city
    puts "Seeding City nb#{x}"
  end  
