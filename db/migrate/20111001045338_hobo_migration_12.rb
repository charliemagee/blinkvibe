class HoboMigration12 < ActiveRecord::Migration
  def self.up
    remove_column :entertainments, :category_id

    remove_column :politics, :category_id

    remove_column :sports, :category_id

    remove_index :entertainments, :name => :index_entertainments_on_category_id rescue ActiveRecord::StatementInvalid

    remove_index :politics, :name => :index_politics_on_category_id rescue ActiveRecord::StatementInvalid

    remove_index :sports, :name => :index_sports_on_category_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :entertainments, :category_id, :integer

    add_column :politics, :category_id, :integer

    add_column :sports, :category_id, :integer

    add_index :entertainments, [:category_id]

    add_index :politics, [:category_id]

    add_index :sports, [:category_id]
  end
end
