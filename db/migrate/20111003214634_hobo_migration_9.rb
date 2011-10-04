class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :nfl_teams, :name, :string
    remove_column :nfl_teams, :team
  end

  def self.down
    remove_column :nfl_teams, :name
    add_column :nfl_teams, :team, :string
  end
end
