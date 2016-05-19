Then(/^I should see a pin on the map$/) do
  expect(page).to have_selector('#map-canvas', count: 1)
end