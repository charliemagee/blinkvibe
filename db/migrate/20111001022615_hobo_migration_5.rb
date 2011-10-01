class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :categories
  end
end
