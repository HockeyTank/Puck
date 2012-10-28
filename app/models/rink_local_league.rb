class RinkLocalLeague < ActiveRecord::Base
  attr_accessible :local_league_id, :rink_id
  belongs_to :local_league
  belongs_to :rink
end
