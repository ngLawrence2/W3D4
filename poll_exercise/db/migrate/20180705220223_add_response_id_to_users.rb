class AddResponseIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :response_id, :integer
  end
end
