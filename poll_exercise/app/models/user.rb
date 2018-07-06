# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  username    :string           not null
#  response_id :integer
#  poll_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User <ApplicationRecord 
  
    validates :poll_id, presence: true
  
    
    has_many :authored_polls,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: 'Poll'
    
    has_many :responses,
    primary_key: :id, 
    foreign_key: :response_id,
    class_name: 'Response'
    
  
end
