class Job < ApplicationRecord
  has_many :bids
  has_many :users, through: :bids
end
