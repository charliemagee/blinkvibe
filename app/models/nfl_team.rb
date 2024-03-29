class NflTeam < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name     :string, :required
    team_url :string, :required
    division enum_string(:NFC_North, :NFC_South, :NFC_West, :NFC_East, :AFC_North, :AFC_South, :AFC_West, :AFC_East), :required
    timestamps
  end
  
  has_many :nfl_games, :through => :team_assignments
  has_many :team_assignments, :dependent => :destroy

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
