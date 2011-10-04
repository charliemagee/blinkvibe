class HoboMigration13 < ActiveRecord::Migration
  def self.up
    add_column :nfl_cal_assignments, :nfl_cal_id, :integer
    add_column :nfl_cal_assignments, :nfl_game_id, :integer

    remove_column :nfl_games, :gameday

    add_column :nfl_cals, :gameday, :date
    remove_column :nfl_cals, :date

    add_index :nfl_cal_assignments, [:nfl_cal_id]
    add_index :nfl_cal_assignments, [:nfl_game_id]
  end

  def self.down
    remove_column :nfl_cal_assignments, :nfl_cal_id
    remove_column :nfl_cal_assignments, :nfl_game_id

    add_column :nfl_games, :gameday, :date

    remove_column :nfl_cals, :gameday
    add_column :nfl_cals, :date, :date

    remove_index :nfl_cal_assignments, :name => :index_nfl_cal_assignments_on_nfl_cal_id rescue ActiveRecord::StatementInvalid
    remove_index :nfl_cal_assignments, :name => :index_nfl_cal_assignments_on_nfl_game_id rescue ActiveRecord::StatementInvalid
  end
end
