class HoboMigration14 < ActiveRecord::Migration
  def self.up
    remove_column :nfl_cals, :name
  end

  def self.down
    add_column :nfl_cals, :name, :string
  end
end
