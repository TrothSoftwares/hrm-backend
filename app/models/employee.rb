class Employee < ApplicationRecord
    # has_one :user
    # accepts_nested_attributes_for :user

    has_many :bids
    has_many :jobs, through: :bids

    has_many :leaverolls
    has_many :attendances


    mount_uploader :url, EmployeeUploader
     attr_accessor :is_thumbnable
end
