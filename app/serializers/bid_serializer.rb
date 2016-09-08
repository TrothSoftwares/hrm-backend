class BidSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :employee
  belongs_to :job
end
