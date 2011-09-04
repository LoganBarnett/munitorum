class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.references :armylist
      t.string :name
      t.string :force
      t.string :definition

      t.timestamps
    end
  end

  def self.down
    drop_table :units
  end
end
