class Armylist < ActiveRecord::Base
  validates_presence_of :name, :point_limit
  validates_numericality_of :point_limit
  belongs_to :user
  has_many :units
  
  def game_valid?
    minimum_force_organization_valid?
  end
  
  def minimum_force_organization_valid?
    units.select {|u| u.force == 'Troop'}.length >= 2 &&
    units.select {|u| u.force == 'HQ'}.length > 0
  end
end
