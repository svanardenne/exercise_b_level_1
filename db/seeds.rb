50.times do
  User.create(username: Faker::Internet.unique.username,
              email: Faker::Internet.unique.email,
              bio: Faker::Lorem.paragraph)
end
