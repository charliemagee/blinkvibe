class NflGame < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string, :required
    winner     :string
    timestamps
  end
  
  has_many :nfl_teams, :through => :team_assignments, :accessible => true
  has_many :team_assignments, :dependent => :destroy
  has_many :nfl_cals, :through => :nfl_cal_assignments, :accessible => true
  has_many :nfl_cal_assignments, :dependent => :destroy

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
