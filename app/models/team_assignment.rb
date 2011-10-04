class TeamAssignment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  
  belongs_to :nfl_team
  belongs_to :nfl_game

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