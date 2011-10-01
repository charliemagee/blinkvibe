class HoboMigration2 < ActiveRecord::Migration
  def self.up
    rename_column :users, :name, :username
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
  end

  def self.down
    rename_column :users, :username, :name
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :age
    remove_column :users, :gender
  end
end
