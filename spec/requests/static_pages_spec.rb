require 'spec_helper'

describe "Static Pages" do
  let(:bast_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{bast_title}")
    end
    
    it "should have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(" | Home")
    end

  end
  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{bast_title} | Help")
  	end
  end

  describe "About us" do
  	it "should have the contect 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{bast_title} | About")
  	end
  end

  describe "Contact Us" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{bast_title} | Contact")
    end
  end

end
