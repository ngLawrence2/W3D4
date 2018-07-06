# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  

  
  u1 = User.create!(username: 'user1', poll_id: 1)
  u2 = User.create!(username: 'user2', poll_id: 2)

  p1= Poll.create!(author: u1, title: 'poll1')
  p2= Poll.create!(author: u2, title: 'poll1')
  
  q1 = Question.create!(poll: p1 , question_in_poll: 'question1')
  q2 = Question.create!(poll: p1 , question_in_poll: 'question2')
  q3 = Question.create!(poll: p2 , question_in_poll: 'q3')
  
  
  a1 = AnswerChoice.create!(question: q1, user_answer: 'answer1')
  a2 = AnswerChoice.create!(question: q2, user_answer: 'a2')
  a3 = AnswerChoice.create!(question: q3, user_answer: 'other')

  r1 = Response.create!(answer_choice: a1, respondent: u1)
  r2 = Response.create!(answer_choice: a2, respondent: u2)
  r2 = Response.create!(answer_choice: a3, respondent: u1)
  # 
  
end