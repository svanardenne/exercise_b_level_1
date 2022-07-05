User.create(id: '37de88e1-0488-4d1a-b091-23c674cd0451',
            username: Faker::Internet.unique.username,
            email: Faker::Internet.unique.email,
            bio: Faker::Lorem.paragraph)
