Given /^I'm on the armylist creation page$/ do
  login
  visit new_armylist_path
end

When /^I add a new armylist$/ do
  fill_in 'Name', :with => 'Eldar Beil-Tann'
  fill_in 'Point limit', :with => '2500'
  select 'Orks', :from => 'Race'
  click_button 'Create'
end

Then /^I should see the page for my newly created armylist$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have a created armylist$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I change the name of the armylist$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the page for my updated armylist$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the new name of my armylist$/ do
  pending # express the regexp above with the code you wish you had
end