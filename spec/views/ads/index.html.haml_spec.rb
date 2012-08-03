require "spec_helper"

describe "ads/index.html.haml" do

  it "should have the h1 'Custom Validators'" do
    render
    rendered.should have_selector('h1', :text => 'Custom Validators')
  end

end
