require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App | "
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      visit 'home'
      response.should be_success
    end

    it "should have the right title" do
      visit 'home'
      page.should have_css("title",
        :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      visit 'contact'
      response.should be_success
    end

    it "should have the right title" do
      visit 'contact'
      response.should have_css("title",
        :content => @base_title + "Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      visit 'about'
      response.should be_success
    end

    it "should have the right title" do
      visit 'about'
      response.should have_css("title",
        :content => @base_title + "About")
    end
  end

end
