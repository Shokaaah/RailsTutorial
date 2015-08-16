require 'spec_helper'

describe "Static Pages" do

	let(:static_title) { "RailsTutorial" }

  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
      expect(page).to have_title("#{static_title}")
      expect(page).not_to have_title('|Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title("#{static_title}|Help")
  	end
  end

  describe "About Us Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  		expect(page).to have_title("#{static_title}|About")
  	end
  end

  describe "Contact Page" do
  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  		expect(page).to have_title("#{static_title}|Contact")
  	end
  end
end
