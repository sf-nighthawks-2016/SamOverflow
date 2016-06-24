100.times do
	User.create(username: Faker::Name.name ,email: Faker::Internet.email, password: Faker::Internet.password)
	Vote.create(user_id: rand(1..80), voteable_id: rand(0..80) , voteable_type: ["Post", "Comment"].sample  )
	Post.create(user_id: rand(1..80), title: Faker::Lorem.word, content: Faker::Lorem.sentence)
	Comment.create(user_id: rand(1..80), content: Faker::Lorem.sentence,  commentable_id: rand(0..80) , commentable_type: ["Post", "Votes"].sample)
	Answer.create(user_id: rand(1..80), post_id: rand(0..80), content: Faker::Lorem.sentence)
end

