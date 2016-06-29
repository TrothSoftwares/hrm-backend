# encoding: utf-8
  class EmployeeUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick



  # def store_dir
  #   'public/uploads'
  # end


  version :thumb do
    process resize_to_fit: [200, 300]
  end

end
