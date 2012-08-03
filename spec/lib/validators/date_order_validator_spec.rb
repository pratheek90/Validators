require 'spec_helper'
describe DateOrderValidator do

  before(:each) do
    @attr = { :name => "foo", :start_date => Time.now, :end_date =>  Time.now  - 100000 }                 
  end 

  	it "should not be valid if dated before start_date" do
  	ad = Ad.new(@attr)
  	ad.valid?
  	ad.errors[:end_date].should include I18n.t('errors.messages.date_not_valid')

	end

end
