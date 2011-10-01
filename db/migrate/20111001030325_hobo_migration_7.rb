class HoboMigration7 < ActiveRecord::Migration
  def self.up
    drop_table :nfls
  end

  def self.down
    create_table "nfls", :force => true do |t|
      t.string   "title"
      t.string   "url"
      t.string   "research"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
