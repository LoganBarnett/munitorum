class Armylist < ActiveRecord::Base
  validates_presence_of :name, :point_limit
  validates_numericality_of :point_limit
  
end
