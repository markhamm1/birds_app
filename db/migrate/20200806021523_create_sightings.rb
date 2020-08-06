class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.integer :user_id
      t.string :bird_name
      t.string :session_id

      t.timestamps
    end
  end
end
