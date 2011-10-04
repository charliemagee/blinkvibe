class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :nfl_teams do |t|
      t.string   :team
      t.string   :team_url
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :nfl_teams
  end
end
