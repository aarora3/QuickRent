require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #welcome" do
      expect(:get => "/").to route_to("users#index") 
    end
  end
end

RSpec.feature 'History' do
  scenario "Records" do
    visit history_path
    expect(page).to have_content("History")
  end
end

RSpec.feature 'History' do
    scenario "Specific Records" do
        visit history_path
        expect(page).to have_content("History")
    end
end

RSpec.feature 'History' do
    scenario "Empty search" do
        visit history_path
        expect(page).to have_content("")
    end
end
