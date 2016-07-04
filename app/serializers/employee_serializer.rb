class EmployeeSerializer < ActiveModel::Serializer
  attributes :id , :firstname , :middlename , :lastname , :email , :contact ,:designation , :dateofjoin , :department, :location, :gender, :maritialstatus, :dob ,:temporaryaddress, :permenantaddress, :status ,:url ,:fullurl ,:thumburl ,:pass,:role

  has_many :leaverolls

  def url
    object.url
  end



  def fullurl
       object.url.to_s
  end


  def thumburl
       object.url.thumb.to_s
  end


end
