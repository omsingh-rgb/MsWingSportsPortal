class User < ApplicationRecord
  has_secure_password
  belongs_to :unit
  validates :unit_id, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
