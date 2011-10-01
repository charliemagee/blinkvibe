class HoboMigration9 < ActiveRecord::Migration
  def self.up
    create_table :sports do |t|
      t.string   :title
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :sports
  end
end
