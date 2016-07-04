class Employee < ApplicationRecord
    # has_one :user
    # accepts_nested_attributes_for :user


    has_many :leaverolls

    mount_uploader :url, EmployeeUploader
     attr_accessor :is_thumbnable
end
