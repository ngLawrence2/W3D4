class CreateQuestion < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null:false
      t.text :question_in_poll, null:false
    end
    add_index :questions, :poll_id
  end
end
