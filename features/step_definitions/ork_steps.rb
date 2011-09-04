Given /^I have an ork armylist with a Warboss and two troops$/ do
  @armylist = User.first.armylists.create name: 'Ork Basic Force Valid', race: 'Orks', point_limit: 500
  @armylist.units.create name: 'Warboss', definition: 'Warboss', force: 'HQ'
  @armylist.units.create name: 'Boyz 1', definition: 'Boyz', force: 'Troop'
  @armylist.units.create name: 'Boyz 2', definition: 'Boyz', force: 'Troop'
  
  login
end

When /^I view the armylist page$/ do
  visit armylist_path(@armylist)
end

Then /^I should see that the armylist is valid$/ do
  page.should have_xpath('//*', :text => 'This armylist is valid and ready to play.')
end

Given /^I have an ork armylist with a Warboss and one troop$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see that the armylist is invalid$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see that the armylist is missing one troop$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have an ork armylist with two troops$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see that the armylist is missing one HQ$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have an ork armylist with a Warboss, a unit of Ork Boyz, and a unit of Nobz$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have an ork armylist with a Warboss, and two units of Nobz$/ do
  pending # express the regexp above with the code you wish you had
end