class AttendanceSerializer < ActiveModel::Serializer
  attributes :id ,:totaldays ,:leavedays ,:presentdays ,:status ,:comments

  belongs_to :employee
end
