class JobSerializer < ActiveModel::Serializer
  attributes :id ,:header , :desc ,:skills ,:salary , :nofvaccancy ,:location

  has_many :bids
  has_many :employees, through: :bids
  
end
