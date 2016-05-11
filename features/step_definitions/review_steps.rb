require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

When(/^I follow Reviews of "(.*?)"$/) do |house|
  reviews_path(house)
end

Then(/^I should see My Reviews page$/) do
 reviews_path
end