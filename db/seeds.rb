User.create!(name: "RAD",
    email: "rad2020rmit@gmail.org",
    password:"Rails2020",
    password_confirmation: "Rails2020",
    mobile_no: "081234567")
# Generate a bunch of additional users.
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password,
                mobile_no: "081234567")
end

User.find(1).microposts.create!(title: "Hey how is it going", content: "COol greeting", topic: 'A.I', view: "1621")
User.find(1).microposts.create!(title: "Hey", content: "Mint", topic: 'V.R', view: "670")
User.find(2).microposts.create!(title: "AI taking over the world", content: "We are doomed", topic: 'News', view: "1536")
User.find(3).microposts.create!(title: "Coding is fun", content: "I like it", topic: 'News', view: "100")
User.find(4).microposts.create!(title: "Not fun", content: "Not fun", topic: 'News', view: "450")