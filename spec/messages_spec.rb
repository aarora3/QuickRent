require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a User, I want to message a person.' do
  scenario "Go to messages page" do
    visit '/messages'
    expect(page).to have_content("Description")
    
   
  end
end