include RandomData

5.times { User.create!(name: RandomData.random_name, email: RandomData.random_email, password: RandomData.random_sentence) }
users = User.all
15.times { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
topics = Topic.all

50.times { Post.create!( user: users.sample, topic: topics.sample, title: RandomData.random_sentence, body: RandomData.random_paragraph) }
posts = Post.all

100.times { Comment.create!(post: posts.sample, body: RandomData.random_paragraph) }

user = User.first
user.update_attributes!(email: "jason@mailmarketingfla.com", password: "helloworld")

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"