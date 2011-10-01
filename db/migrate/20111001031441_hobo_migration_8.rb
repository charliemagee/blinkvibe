class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :nfl_teams, :division, :string
  end

  def self.down
    remove_column :nfl_teams, :division
  end
end
