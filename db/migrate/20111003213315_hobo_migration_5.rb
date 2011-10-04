class HoboMigration5 < ActiveRecord::Migration
  def self.up
    drop_table :nfls

    create_table :nfl_games do |t|
      t.string   :team_1
      t.string   :team_2
      t.string   :team_1_url
      t.string   :team_2_url
      t.date     :gameday
      t.string   :winner
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    create_table "nfls", :force => true do |t|
      t.string   "title"
      t.string   "url"
      t.string   "research"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    drop_table :nfl_games
  end
end
