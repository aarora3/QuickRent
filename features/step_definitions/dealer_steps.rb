# Add a declarative step here for populating the DB with houses.
Given /the following dealers exist/ do |dealers_table|
  dealers_table.hashes.each do |dealer|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that house to the database here.
  Dealer.create!(dealer)
  end
end


Then /I should see all dealers listings/ do
  # Make sure that all the menu itemms in the app are visible in the table
  # page.should have_css "#myTable tr", :count => House.count
  page.assert_selector('#dealers tbody tr', count: Dealer.count)
end
