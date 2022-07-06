50.times do
  User.create(id: Faker::Internet.uuid,
              username: Faker::Internet.unique.username,
              email: Faker::Internet.unique.email,
              bio: Faker::Lorem.paragraph)
end

User.create(id: '3d8b3ed5-fb80-43d2-a719-4b9c6941980f',
            username: Faker::Internet.unique.username,
            email: Faker::Internet.unique.email,
            bio: Faker::Lorem.paragraph)
