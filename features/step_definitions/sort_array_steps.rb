Given(/^I am at the home page$/) do
  visit root_path
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^press save array button$/) do
  click_button "Save Array"
end

Then(/^I should see '(\d+)'$/) do |output|
  page.should have_content(output)
end

Then(/^I should see 'Hello'$/) do
	page.should have_content("Hello")
end
