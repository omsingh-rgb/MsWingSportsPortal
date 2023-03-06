class Cadet < ApplicationRecord
  belongs_to :unit
  has_many :registrations
end
