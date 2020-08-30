class UpdateSessionsSchema < ActiveRecord::Migration[6.0]
  def change
    remove_column :sessions, :location, :string
    add_column :sessions, :state, :string
    add_column :sessions, :county, :string
  end
end
