class Event < ApplicationRecord
  belongs_to :admin, class_name "User"
  has_many :attendances
  has_many :users, foreign_key: 'attendee_id'

  validates :start_date, presence: true
  #validates :duration, presence: true, format: { with: ^[1-4][0-4]*0$ }
  validates :duration, presence: true, format: { with: ($_ % 5) == 0 }
  validates :title, presence: true, length: {minimum: 5, maximum: 140}
  validates :description, presence: true, length: {minimum: 20, maximum: 1000}
  validates :price, presence: true, format: { with: ([1-9][0-9]{0,2}|1000) }
  validates :location, presence: true
end