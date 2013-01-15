require 'spec_helper'

describe "Landing Page" do

  describe "Home page" do

    it "should have the content 'Gastroverse'" do
      visit '/landing_page/home'
      page.should have_selector('h1', :text => 'Home')
    end
    
    it "should have the title 'Home'" do
      visit '/landing_page/home'
      page.should have_selector('title', :text => "Gastroverse | Home")
    end
  end
  
  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/landing_page/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/landing_page/about'
      page.should have_selector('title',
                    :text => "Gastroverse | About Us")
    end
  end
end
