class HoboMigration10 < ActiveRecord::Migration
  def self.up
    create_table :entertainments do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :politics do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :entertainments
    drop_table :politics
  end
end
