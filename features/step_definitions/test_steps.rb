Given /^I go to Google$/ do
  visit "http://www.google.com"
end
When /^I click Search$/ do
  find('button', :text => "Google Search").click()
end

Given /^I am on YouTube$/ do |url|
  visit "http://www.youtube.com"
end
 
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end
 
When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end
 
Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end