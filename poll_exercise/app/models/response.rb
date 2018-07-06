# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  answer_id   :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ApplicationRecord

  validate :not_duplicate_response
  
  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :answer_id,
  class_name: :User
  
  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question
  
  has_one :question,
  through: :answer_choice,
  source: :answer_choices
  
  
  def sibling_responses
      question.responses
  end 
  
  def not_duplicate_response
      
  end 
  
end 
