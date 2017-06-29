
require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} question created"

Post.find_or_create_by!(
  title: "I created title",
  body: "I created body"
)
puts "#{Post.count} posts created"

Comment.find_or_create_by!(post:posts.sample, body: "sexy body")
puts "#{Comment.count} comments created"
