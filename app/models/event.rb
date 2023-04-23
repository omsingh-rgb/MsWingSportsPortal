class Event < ApplicationRecord
  has_many :registrations
  belongs_to :e_type
end
