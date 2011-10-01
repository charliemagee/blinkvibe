class HoboMigration3 < ActiveRecord::Migration
  def self.up
    rename_column :users, :first_name, :name
    remove_column :users, :username
  end

  def self.down
    rename_column :users, :name, :first_name
    add_column :users, :username, :string
  end
end
