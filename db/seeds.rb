# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Question.create(:title => Faker::Lorem.word, :body => Faker::Lorem.sentence, :vote_count => rand(1..50) )
end

15.times do
  answer = Answer.create(:title => Faker::Lorem.word, :body => Faker::Lorem.sentence, :vote_count => rand(1..50))
  question = Question.find(rand(1..10))
  question.answers << answer
end

20.times do
  comment = Comment.create(:body => Faker::Lorem.sentence, :vote_count => rand(1..50))
  answer = Answer.find(rand(1..15))
  answer.comments << comment
end

20.times do
  comment = Comment.create(:body => Faker::Lorem.sentence, :vote_count => rand(1..50))
  question = Question.find(rand(1..10))
  question.comments << comment
end
