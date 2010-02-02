class UploadsController < ApplicationController
  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    @upload.filename, @upload.content_type = params[:upload][:file][:filename], params[:upload][:file][:content_type]
    redirect_to @upload
  end
  
  def show
    @upload = Upload.find(params[:id])
  end
end
