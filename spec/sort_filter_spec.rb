require 'spec_helper'
require 'rails_helper'

RSpec.feature 'display list of houses filtered by area' do
  scenario "restrict to houses based on filter" do
    visit houses_path
    click_button("Refresh")
    expect(page).to_not have_content("11 Catherine")
  end
end
