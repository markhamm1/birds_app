class DeleteDatetime < ActiveRecord::Migration[6.0]
  def change
    remove_column :sessions, :date_time, :datetime
  end
end
