class ChangeDate < ActiveRecord::Migration[6.0]
  def change
    change_column :sessions, :date_time, :datetime
  end
end
