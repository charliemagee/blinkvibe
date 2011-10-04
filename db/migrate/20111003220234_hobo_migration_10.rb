class HoboMigration10 < ActiveRecord::Migration
  def self.up
    create_table :team_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :nfl_team_id
      t.integer  :nfl_game_id
    end
    add_index :team_assignments, [:nfl_team_id]
    add_index :team_assignments, [:nfl_game_id]
  end

  def self.down
    drop_table :team_assignments
  end
end
