def create_gsfc
  @gsfc = FactoryGirl.create(:gsfc)
end


Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I follow the link to GSFC_Jobs$/) do
  visit '/jaguar/ground-state-forced-convergence'
end

Then(/^I should see GSFC jobs$/) do
  page.should have_content "GSFC Jobs"
end

Given(/^I am on the GSFC_Jobs Page$/) do
  create_gsfc
  visit jaguar_gsfcs_path
end

When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see the details of "(.*?)"$/) do |unique_name|
  page.should have_content(unique_name)
end
