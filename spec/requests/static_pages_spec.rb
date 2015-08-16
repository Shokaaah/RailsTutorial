require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
      expect(page).to have_title('RailsTutorial|Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title('RailsTutorial|Help')
  	end
  end

  describe "About Us Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  		expect(page).to have_title('RailsTutorial|About')
  	end
  end
end
