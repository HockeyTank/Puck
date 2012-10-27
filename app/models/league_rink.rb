class LeagueRink < ActiveRecord::Base
  attr_accessible :rink_id, :rink_league_id
  
  belongs_to :rink
  belongs_to :rink_league
end
