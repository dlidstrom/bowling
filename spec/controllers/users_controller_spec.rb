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
  
  describe "POST 'create'" do
    
    describe "failure" do
      
      before(:each) do
        @attr = { :name => "", :email => "",
          :password => "", :password_confirmation => ""}
      end

      it "should not create a user" do
        lambda do
          post :create, :user => @attr
        end.should_not change(User, :count)
      end

      it "should have the right title" do
        post :create, :user => @attr
        page.should have_css("title", :text => "Sign up")
      end
      
      it "should render the 'new' page" do
        post :create, :user => @attr
        page.should render_template('new')
      end
      
    end
    
    describe "success" do
      
      before(:each) do
        @attr = { :name => "New User", :email => "user@example.com",
        :password => "foobar", :password_confirmation => "foobar" }
      end
      
      it "should create a user" do
        lambda do
          post :create, :user => @attr
        end.should change(User, :count).by(1)
      end
      
      it "should redirect to the user show page" do
        post :create, :user => @attr
        page.should redirect_to(user_path(assigns(:user)))
      end
      
      it "should have a welcome message" do
        post :create, :user => @attr
        flash[:success].should =~ /welcome to the sample app/i
      end
      
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
