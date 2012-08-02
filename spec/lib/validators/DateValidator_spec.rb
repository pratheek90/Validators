require 'spec_helper'

describe DateValidator do

subject{DateValidator.new(:attribute => [:end_date])}

it "should not be valid if dated before start_date" do
	pending "add logic to perform validation"
end

end
