# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  user_answer :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
  validates :user_answer, presence: true
  
  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question
  
  
end 
