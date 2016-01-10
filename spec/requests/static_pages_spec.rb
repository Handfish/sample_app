require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home Page" do
    it "works! (now write some real specs)" do
      get '/static_pages/home'
      expect(response).to have_http_status(200)
    end

    it "should have the right title" do
       visit '/static_pages/home'
       expect(page).to have_title "Home"
     end

     it "should have the h1 'Sample App'" do
       visit '/static_pages/home'
       expect((page).find('h1')).to have_content 'Sample App'
     end

  end

  describe "Help Page" do
     it "should jave the content 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_content('Help')
     end
  end

  describe "About page" do
     it "should have the content 'About Us'" do
       visit '/static_pages/about'
       expect(page).to have_content('About Us')
     end
  end
  
end
