require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a User, I want to signup.' do
  scenario "Go to signup page" do
    visit '/users/new'
    expect(page).to have_content("Name")
    
   
  end
end