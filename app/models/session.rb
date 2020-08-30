class Session < ApplicationRecord
  has_many :sightings
  belongs_to :user
end
