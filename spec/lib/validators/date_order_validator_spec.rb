require 'spec_helper'
describe DateOrderValidator do

  it "should not be valid if dated before start_date" do
    @attr = { :name => "foo", :start_date => Date.today, :end_date =>  Date.today  - 1 }                 
    ad = Ad.new(@attr)
    ad.valid?
    ad.errors[:end_date].should include I18n.t('errors.messages.date_not_valid')
  end

  it "should be valid if dated after start_date" do
    @attr = { :name => "foo", :start_date => Date.today, :end_date =>  Date.today + 1}          
    ad = Ad.new(@attr)
    ad.should be_valid
  end

  it "should be not valid if dated same as start_date" do
    @attr = { :name => "foo", :start_date => Date.today, :end_date =>  Date.today}          
    ad = Ad.new(@attr)
		ad.valid?
    ad.errors[:end_date].should include I18n.t('errors.messages.date_not_valid')  
  end

end
