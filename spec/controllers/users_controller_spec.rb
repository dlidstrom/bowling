require 'spec_helper'

describe UsersController do
  render_views

  describe "GET '/users/new'" do
    it "should be successful" do
      visit '/users/new'
      page.status_code.should == 200
    end

    it "should have the right title" do
      visit '/users/new'
      page.should have_css("title", :text => "Sign up")
    end
  end

end
