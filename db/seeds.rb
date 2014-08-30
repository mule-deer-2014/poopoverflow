10.times do
  Question.create(:title => Faker::Lorem.word, :body => Faker::Lorem.sentence)
end

30.times do
  answer = Answer.create(:body => Faker::Lorem.sentence)
  question = Question.find(rand(1..10))
  question.answers << answer
end

20.times do
  comment = Comment.create(:body => Faker::Lorem.sentence)
  answer = Answer.find(rand(1..30))
  answer.comments << comment
end

20.times do
  comment = Comment.create(:body => Faker::Lorem.sentence)
  question = Question.find(rand(1..10))
  question.comments << comment
end

20.times do
  comment = Comment.create(:body => Faker::Lorem.sentence)
  question = Question.find(rand(1..10))
  question.comments << comment
end

30.times do
  vote = Vote.create(:vote_value => [-1,1,1,1].sample)
  question = Question.find(rand(1..10))
  question.votes << vote
end

30.times do
  vote = Vote.create(:vote_value => [-1,1,1,1].sample)
  comment = Comment.find(rand(1..20))
  comment.votes << vote
end

30.times do
  vote = Vote.create(:vote_value => [-1,1,1,1].sample)
  answer = Answer.find(rand(1..30))
  answer.votes << vote
end
