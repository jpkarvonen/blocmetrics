require 'faker'

10.times do
   User.create!(
   email:    Faker::Internet.email,
   password: Faker::Crypto.md5
   )
end
 
users = User.all

50.times do
    RegisteredApplication.create!(
        user:  users.sample,
        name:  Faker::StarTrek.character,
        url:   "www." + Faker::StarTrek.location + ".com"
    )
end

applications = RegisteredApplication.all

200.times do 
    Event.create!(
        registered_application: applications.sample,
        name: Faker::Hacker.verb
        )
end


puts "Seeds finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"