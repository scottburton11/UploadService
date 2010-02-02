require 'spec_helper'

describe UploadsController do

  def upload_params
    {"upload" => {"file"=>{"content_type"=>"text/plain", 
                           "signature"=>"MRv5HXcOaUFF45AS9aZjOEkykOg=", 
                           "filename"=>"BECU notes.txt", 
                           "path"=>"/tmp/uploads/apreqDr56Ru"}
                           }}
  end

  before(:each) do
    @upload = mock_model(Upload)
    Upload.should_receive(:new).with(upload_params['upload']).and_return(@upload)
    @upload.should_receive(:filename).with("BECU notes.txt")
    @upload.should_receive(:content_type).with("text/plain")
    post :create, upload_params
  end
  
  it "creates a new instance of Upload" do
    assigns[:upload].should be_an_instance_of(Upload)
  end
  
  # it "manually assigns filename and content_type attributes from the upload[file] params hash" do
  # 
  # end

end
