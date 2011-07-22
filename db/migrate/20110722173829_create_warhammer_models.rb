class CreateWarhammerModels < ActiveRecord::Migration
  def self.up
    create_table :warhammer_models do |t|
      t.string :name
      t.unit :references

      t.timestamps
    end
  end

  def self.down
    drop_table :warhammer_models
  end
end
