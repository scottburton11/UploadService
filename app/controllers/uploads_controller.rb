class UploadsController < ApplicationController
  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload][:file])
    redirect_to @upload
  end
  
  def show
    @upload = Upload.find(params[:id])
  end
end
