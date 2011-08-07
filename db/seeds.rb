# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Race.create :name => 'Eldar'
Race.create :name => 'Orks'

User.create :email => 'logustus@gmail.com', :password => 'Password1', :password_confimation => 'Password1'