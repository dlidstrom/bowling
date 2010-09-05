require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home response at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact response at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have an About response at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help response at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
    
  it "should have a signup response at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

  it "should have link to About" do
    get root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
  end
  
  it "should have link to Help" do
    get root_path
    click_link "Help"
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have link to Contact" do
    get root_path
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have link to Home" do
    get root_path
    click_link "Home"
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have link to Sign up" do
    get root_path
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign up")
  end
  
end
