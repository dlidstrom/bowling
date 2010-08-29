require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App | "
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      visit '/'
      page.status_code.should == 200
    end

    it "should have the right title" do
      visit '/'
      page.should have_css('title',
        :text => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      visit 'contact'
      page.status_code.should == 200
    end

    it "should have the right title" do
      visit 'contact'
      page.should have_css("title",
        :text => @base_title + "Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      visit 'about'
      page.status_code.should == 200
    end

    it "should have the right title" do
      visit 'about'
      page.should have_css("title",
        :text => @base_title + "About")
    end
  end

end
