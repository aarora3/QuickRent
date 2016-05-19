require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a renter, I want to see the list of Property Dealers.' do
  scenario "list of Property Dealers" do
    visit dealers_path
    expect(page).to have_content("Property Dealers Listings")
  end
end