class AttendanceSerializer < ActiveModel::Serializer
  attributes :id ,:totaldays ,:leavedays ,:presentdays ,:status ,:comments  ,:updatedat

  belongs_to :user


  def updatedat
    object.updated_at
  end

end
