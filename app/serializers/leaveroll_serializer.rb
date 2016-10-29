class LeaverollSerializer < ActiveModel::Serializer
  attributes :id ,:fromdate ,:todate , :days ,:status , :comments

  belongs_to :user
end
