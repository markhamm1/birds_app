class AddSessionCountToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :session_count, :integer
  end
end
