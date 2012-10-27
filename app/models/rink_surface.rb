class RinkSurface < ActiveRecord::Base
  attr_accessible :rink_id, :surface_id
  belongs_to :rink
  belongs_to :surface
end
