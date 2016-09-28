class Employee < ApplicationRecord
    # has_one :user
    # accepts_nested_attributes_for :user

    has_many :bids , :dependent => :destroy
    has_many :jobs, through: :bids 

    has_many :leaverolls , :dependent => :destroy
    has_many :attendances , :dependent => :destroy


    mount_uploader :url, EmployeeUploader
     attr_accessor :is_thumbnable
end
