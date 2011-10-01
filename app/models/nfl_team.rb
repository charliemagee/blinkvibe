class NflTeam < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    url  :string
    division enum_string(:AFC_North, :AFC_South, :AFC_East, :AFC_West, :NFC_North, :NFC_South, :NFC_East, :NFC_West)
    timestamps
  end
  
  belongs_to :sport
  
  validates_presence_of :sport

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
