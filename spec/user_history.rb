require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #welcome" do
      expect(:get => "/").to route_to("users#index") 
    end
  end
end

RSpec.feature 'UserHistory' do
  scenario "User History page content" do
    visit history_path
    expect(page).to have_content("Welcome")
  end
end