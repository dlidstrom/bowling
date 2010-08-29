require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    visit '/'
    page.should have_css('title', :content => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    visit '/contact'
    page.should have_css('title', :content => "Contact")
  end
  
  it "should have an About page at '/about'" do
    visit '/about'
    page.should have_css('title', :content => "About")
  end
  
  it "should have a Help page at '/help'" do
    visit '/help'
    page.should have_css('title', :content => "Help")
  end

end

