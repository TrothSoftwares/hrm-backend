class Employee < ApplicationRecord
    mount_uploader :url, EmployeeUploader
    # attr_accessor :is_thumbnable
end
