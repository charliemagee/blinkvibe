class HoboMigration15 < ActiveRecord::Migration
  def self.up
    add_column :nfl_cals, :name, :string
  end

  def self.down
    remove_column :nfl_cals, :name
  end
end
