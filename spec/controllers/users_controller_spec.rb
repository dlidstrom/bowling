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
  
  describe "GET 'show'" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should be successful" do
      visit user_path(@user)
      #get :show, :id => @user
      page.status_code.should == 200
    end
    
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
    
    it "should have the right title" do
      visit user_path(@user)
      #visit :show, :id => @user
      page.should have_css("title", :text => @user.name)
    end
    
    it "should include the user's name" do
      visit user_path(@user)
      #get :show, :id => @user
      page.should have_css("h1", :text => @user.name)
    end
    
    it "should have a profile image" do
      get :show, :id => @user
      page.should have_css("h1>img", :class => "gravatar")
    end
  end

end
