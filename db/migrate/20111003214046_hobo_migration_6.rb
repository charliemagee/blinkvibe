class HoboMigration6 < ActiveRecord::Migration
  def self.up
    remove_column :nfl_games, :team_1_url
    remove_column :nfl_games, :team_2_url
    remove_column :nfl_games, :team_1
    remove_column :nfl_games, :team_2
  end

  def self.down
    add_column :nfl_games, :team_1_url, :string
    add_column :nfl_games, :team_2_url, :string
    add_column :nfl_games, :team_1, :string
    add_column :nfl_games, :team_2, :string
  end
end
