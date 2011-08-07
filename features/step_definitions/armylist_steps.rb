Given /^I am on the armylist creation page$/ do
  login
  visit new_armylist_path
end

When /^I add a new armylist$/ do
  fill_in 'Name', :with => 'Eldar Biel-Tann'
  fill_in 'Point limit', :with => '2500'
  select 'Eldar', :from => 'Race'
  click_button 'Create'
end

Then /^I should see the page for my newly created armylist$/ do
  page.should have_xpath('//*', :text => 'Eldar Biel-Tann')
end

Given /^I have a created armylist$/ do
  login
  @armylist = User.first.armylists.create! :name => 'test army', :point_limit => 500, :race => 'Orks'
end

Given /^I am on the edit page for my armylist$/ do
  visit edit_armylist_path(@armylist)
end

When /^I change the name of the armylist$/ do
  fill_in 'Name', :with => 'test army updated'
  click_button 'Update'
end

Then /^I should see the new name of my armylist$/ do
  page.should have_xpath('//*', :text => 'test army updated')
end

Given /^I am on the armylist list page$/ do
  visit armylists_path
end

When /^I delete the armylist$/ do
  click_button 'delete'
  #click_button 'Ok'
  page.driver.browser.switch_to.alert.accept
end

Then /^I should no longer see the armylist$/ do
  page.should_not have_xpath('//*', :text => 'test army')
end
