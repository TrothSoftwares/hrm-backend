class EmployeeSerializer < ActiveModel::Serializer
  attributes :id , :firstname , :middlename , :lastname , :email , :contact ,:designation , :dateofjoin , :department, :location, :gender, :maritialstatus, :dob ,:temporaryaddress, :permenantaddress, :status ,:url ,:fullurl ,:thumburl ,:pass,:role , :basic , :houserentallowance ,:adhoc ,:transport ,:misc , :statbonus , :provfund, :proftax , :incometax ,:essp ,:otherearningsnt ,:oncallshiftallowance ,:gross

  has_many :leaverolls
  has_many :attendances


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
