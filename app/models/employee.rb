class Employee < ApplicationRecord
    # has_one :user
    # accepts_nested_attributes_for :user

    mount_uploader :url, EmployeeUploader
    # attr_accessor :is_thumbnable
end
