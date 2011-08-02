class AddUserIdToArmylists < ActiveRecord::Migration
  def self.up
    add_column :armylists, :user_id, :integer
  end

  def self.down
    remove_column :armylists, :user_id
  end
end
