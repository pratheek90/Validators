require "spec_helper"

describe "ads/index.html.haml" do

	it "should have the h1 'Cusotm Validators'" do
	visit '/ads'
	page.should have_selector('h1', :text => "Custom Validators")
end
	
end

