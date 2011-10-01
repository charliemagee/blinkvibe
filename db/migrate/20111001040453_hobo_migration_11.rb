class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :nfl_teams, :sport_id, :integer

    add_column :entertainments, :category_id, :integer

    add_column :politics, :category_id, :integer

    add_column :sports, :category_id, :integer

    add_index :nfl_teams, [:sport_id]

    add_index :entertainments, [:category_id]

    add_index :politics, [:category_id]

    add_index :sports, [:category_id]
  end

  def self.down
    remove_column :nfl_teams, :sport_id

    remove_column :entertainments, :category_id

    remove_column :politics, :category_id

    remove_column :sports, :category_id

    remove_index :nfl_teams, :name => :index_nfl_teams_on_sport_id rescue ActiveRecord::StatementInvalid

    remove_index :entertainments, :name => :index_entertainments_on_category_id rescue ActiveRecord::StatementInvalid

    remove_index :politics, :name => :index_politics_on_category_id rescue ActiveRecord::StatementInvalid

    remove_index :sports, :name => :index_sports_on_category_id rescue ActiveRecord::StatementInvalid
  end
end
