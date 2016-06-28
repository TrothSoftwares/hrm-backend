class EmployeeSerializer < ActiveModel::Serializer
  attributes :id , :firstname , :middlename , :lastname , :email , :contact ,:designation , :dateofjoin , :department, :location, :gender, :maritialstatus, :dob ,:temporaryaddress, :permenantaddress, :status


end
