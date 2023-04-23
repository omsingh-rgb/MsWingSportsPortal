class Unit < ApplicationRecord
  has_many :cadets
  has_many :users
  has_one :manager
end
