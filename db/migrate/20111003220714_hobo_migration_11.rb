class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :nfl_games, :name, :string
  end

  def self.down
    remove_column :nfl_games, :name
  end
end
