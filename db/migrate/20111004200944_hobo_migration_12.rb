class HoboMigration12 < ActiveRecord::Migration
  def self.up
    create_table :nfl_cal_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :nfl_cals do |t|
      t.string   :name
      t.date     :date
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :nfl_cal_assignments
    drop_table :nfl_cals
  end
end
