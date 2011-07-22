class CreateArmylists < ActiveRecord::Migration
  def self.up
    create_table :armylists do |t|
      t.string :name
      t.string :race

      t.timestamps
    end
  end

  def self.down
    drop_table :armylists
  end
end
