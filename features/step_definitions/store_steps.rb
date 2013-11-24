Given /^I am on the homepage$/ do
  visit "http://richard-sports-store.azurewebsites.net/"
end

When /^I click on the (.*) link$/ do |link|
    click_link(link)
end

Then /^I am on the (.*) products page$/ do |prod_page|
  current_path.should == "/#{prod_page}"
end

Then(/^I am redirected to the Cart page$/) do
  current_path.should == "/Cart/Index"
end

Then(/^I am redirected to the Checkout page$/) do
  current_path.should == "/Cart/Checkout"
end

When /^I add the Soccer Ball item$/ do
  #when i use string interpolation within the contains block, the code breaks
  #i have hardcoded a product for now
  find(:xpath, "//h3[contains(., 'Soccer Ball')]/..//input[@type='submit']").click()
end

When /^I click on the Remove button in my cart$/ do
  find(:xpath, '//input[@type="submit"]').click()
end

Then(/^my cart should be empty$/) do
  find('tbody').has_content?('')
end

When /^I enter invalid checkout information$/ do
  fill_in('Name', :with => 'Richard Staackmann')
  find(:xpath, '//input[@type="submit"]').click() #submit order
end

Then(/^I am given a warning and not allowed to checkout$/) do
  assert_selector('.validation-summary-errors') && current_path.should == "/Cart/Checkout"
end