require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a renter, I want to see the list of reviews of all houses.' do
  scenario "list of reviews" do
    visit '/reviews'
    expect(page).to have_content("Listing Reviews")
  end
end