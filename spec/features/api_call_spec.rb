require 'spec_helper'

describe "API Call" do
  it "calls API and response used in index" do
  	VCR.use_cassette("hotels") do
  	  visit '/' 
  	  page.should have_content "Hotel"
  	  page.should_not have_content "NotHotel"
    end
  end
end