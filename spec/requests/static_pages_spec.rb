require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home Page" do
    it "works! (now write some real specs)" do
      get '/static_pages/home'
      expect(response).to have_http_status(200)
    end

     it "should have the h1 'Sample App'" do
       visit '/static_pages/home'
       expect((page).find('h1')).to have_content 'Sample App'
     end

    it "should have the base title" do
       visit '/static_pages/home'
       expect(page).to have_title("Ruby on Rails Tutorial App")
    end

    it "should not have a custom page title" do
       visit '/static_pages/home'
       expect(page).to_not have_title("| Home")
    end
  end

  describe "Help Page" do
     it "should jave the content 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_content('Help')
     end

     it "should have the h1 'Help'" do
       visit '/static_pages/help'
       expect((page).find('h1')).to have_content 'Help'
     end
  end

  describe "About page" do
     it "should have the content 'About Us'" do
       visit '/static_pages/about'
       expect(page).to have_content('About Us')
     end

     it "should have the h1 'About'" do
       visit '/static_pages/about'
       expect((page).find('h1')).to have_content 'About'
     end
  end
  
  describe "Contact page" do
     it "should have the content 'Contact Us'" do
       visit '/static_pages/contact'
       expect(page).to have_content('Contact Us')
     end

     it "should have the h1 'Contact'" do
       visit '/static_pages/contact'
       expect((page).find('h1')).to have_content 'Contact'
     end
  end

end
