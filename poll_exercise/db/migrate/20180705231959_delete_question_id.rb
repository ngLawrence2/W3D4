class DeleteQuestionId < ActiveRecord::Migration[5.1]
  def change
    remove_column :polls, :question_id
    add_column :answer_choices, :created_at, :datetime, null: false 
    add_column :answer_choices, :updated_at, :datetime, null: false
    
    add_column :polls, :created_at, :datetime, null: false
    add_column :polls, :updated_at, :datetime, null: false
    
    add_column :questions, :created_at, :datetime, null: false
    add_column :questions, :updated_at, :datetime, null: false
    
    add_column :users, :created_at, :datetime, null: false
    add_column :users, :updated_at, :datetime, null: false
    
    add_column :responses,:created_at, :datetime, null: false
    add_column :responses, :updated_at, :datetime, null: false
  end
end
