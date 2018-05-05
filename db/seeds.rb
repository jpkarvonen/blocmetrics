require 'faker'

10.times do
   User.create!(
   email:    Faker::Internet.email,
   password: Faker::Crypto.md5
   )
end
 
users = User.all

50.times do
    name = Faker::App.name
    RegisteredApplication.create!(
        user:  users.sample,
        name:  name,
        url:   "www." + name + ".com"
    )
end

applications = RegisteredApplication.all

2500.times do 
    event = Event.create!(
        registered_application: applications.sample,
        name: Faker::Hacker.verb
        )
        
    event.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end


puts "Seeds finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"