require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home Page" do
    it "works! (now write some real specs)" do
      get '/static_pages/home'
      expect(response).to have_http_status(200)
    end
  end

  describe "Help Page" do
     it "should jave the content 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_content('Help')
     end
  end

end
