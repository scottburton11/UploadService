require 'spec_helper'

describe Upload do
  before(:each) do
    @valid_attributes = {
        # {"file"=>{"content_type"=>"text/plain", 
        #                        "signature"=>"MRv5HXcOaUFF45AS9aZjOEkykOg=", 
        #                        "filename"=>"BECU notes.txt", 
        #                        "path"=>"/tmp/uploads/apreqDr56Ru"}
        #                        }
        :file => {:content_type => "text/plain",
                  :signature => "ACalculatedSignature",
                  :filename => "uploaded_file.txt",
                  :path => (Rails.root + "spec/fixtures/uploaded_file.txt").to_s}
    }
  end

  describe "file= virtual attribute" do
    it "creates a new file in public/uploads" do
      File.should_receive(:open).with(Rails.root + "public/uploads/uploaded_file.txt", "w+")
      Upload.new(:filename => @valid_attributes[:file][:filename], :file => @valid_attributes[:file])
    end
  end
end
