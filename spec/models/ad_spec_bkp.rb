require 'spec_helper'
require 'factory_girl'

describe Ad do

before(:each) do
	@ad = Ad.new
	@ad.start_date = "2012-12-12"
	@ad.end_date = "2012-12-15"
end

it "should not be valid without name" do
	@ad.name = ""
	@ad.should_not be_valid
end

it "should not be valid if start_date is after end_date" do
	@ad.start_date.should <= @ad.end_date
end

end