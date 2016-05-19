require 'spec_helper'
require 'rails_helper'

RSpec.feature 'FAQs About QuickRent' do
  scenario "FAQ page content" do
  text = "Frequently Asked Questions"
    visit faq_path
        expect(page).to have_content(text)
  end
end