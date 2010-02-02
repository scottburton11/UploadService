class Upload < ActiveRecord::Base
  def file=(params)
    File.open(Rails.root + "public/uploads/#{params[:filename]}", "w+") do |file|
      file.write File.open(params[:path]).read
    end
  end
  
  def file
    File.open(Rails.root + "public/uploads/#{filename}")
  end
  
end
