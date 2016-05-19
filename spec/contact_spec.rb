require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #welcome" do
      expect(:get => "/").to route_to("users#index") 
    end
  end
end

RSpec.feature 'Contact Us' do
  scenario "Contact Us page content" do

    text = "You may contact any of the developers below for more information, queries or suggestions."
    visit contactus_path
    expect(page).to have_content(text)
  end
end