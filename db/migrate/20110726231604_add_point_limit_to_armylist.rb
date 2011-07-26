class AddPointLimitToArmylist < ActiveRecord::Migration
  def self.up
    add_column :armylists, :point_limit, :integer
  end

  def self.down
    remove_column :armylists, :point_limit
  end
end
