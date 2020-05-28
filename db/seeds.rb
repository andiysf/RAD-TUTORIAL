User.create!(name: "RAD",
    email: "rad2020rmit@gmail.org",
    password:"Rails2020",
    password_confirmation: "Rails2020",
    mobile_no: "08123456")
# Generate a bunch of additional users.
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password,
                mobile_no: "08123456")
end

users = User.order(:created_at).take(6)
50.times do
    title = Faker::Lorem.sentence(1)
    content = Faker::Lorem.sentence(word_count: 5)
    users.each { |user| user.microposts.create!(title: title, content: content) }
end