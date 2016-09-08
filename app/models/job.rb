class Job < ApplicationRecord
  has_many :bids
  has_many :employees, through: :bids
end
