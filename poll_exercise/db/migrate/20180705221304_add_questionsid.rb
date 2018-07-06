class AddQuestionsid < ActiveRecord::Migration[5.1]
  def change
    add_column :polls, :question_id, :integer
  end
end
