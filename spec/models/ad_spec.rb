require 'spec_helper'

describe Ad do

  before(:each) do
	@ad = Ad.new
  end

  it "it is not valid without name" do
    @ad.name = nil
    @ad.should_not be_valid
  end

end
