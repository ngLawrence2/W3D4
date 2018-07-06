class CreateAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null:false
      t.text :user_answer, null:false
    end
    add_index :answer_choices, :question_id
  end
end
