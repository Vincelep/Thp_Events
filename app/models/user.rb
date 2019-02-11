class User < ApplicationRecord
  has_many :attendances, foreign_key: 'attendee_id'
  has_many :events, foreign_key: 'admin_id'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
end