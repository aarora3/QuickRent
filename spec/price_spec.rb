require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a renter, I want to see the list of houses to rent.' do
  scenario "check on existing price list" do
    visit houses_path
    expect(page).to have_content("Price")
 end
end
