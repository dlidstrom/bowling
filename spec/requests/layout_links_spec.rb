require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    visit '/'
    page.should have_css('title', :text => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    visit '/contact'
    page.should have_css('title', :text => "Contact")
  end
  
  it "should have an About page at '/about'" do
    visit '/about'
    page.should have_css('title', :text => "About")
  end
  
  it "should have a Help page at '/help'" do
    visit '/help'
    page.should have_css('title', :text => "Help")
  end
    
  it "should have a signup page at '/signup'" do
    visit '/signup'
    page.should have_css('title', :text => "Sign up")
  end

  it "should have link to About" do
    visit root_path
    click_link "About"
    page.should have_css('title', :text => "About")
  end
  
  it "should have link to Help" do
    visit root_path
    click_link "Help"
    page.should have_css('title', :text => "Help")
  end
  
  it "should have link to Contact" do
    visit root_path
    click_link "Contact"
    page.should have_css('title', :text => "Contact")
  end
  
  it "should have link to Home" do
    visit root_path
    click_link "Home"
    page.should have_css('title', :text => "Home")
  end
  
  it "should have link to Sign up" do
    visit root_path
    click_link "Sign up now!"
    page.should have_css('title', :text => "Sign up")
  end
  
end
