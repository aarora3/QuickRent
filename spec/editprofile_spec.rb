require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a User, I want to Edit Profile.' do
  scenario "Editing profile page" do
      visit myaccount_path
  expect(page).to have_content("Edit Profile")
    
   
  end
end