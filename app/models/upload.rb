class Upload < ActiveRecord::Base
  def file=(porter)
    File.open(Rails.root + "public/uploads/#{porter.original_filename}", "w+") do |file|
      file.write File.open(porter.path).read
    end
  end
  
  def file
    File.open(Rails.root + "public/uploads/#{filename}")
  end
  
end
