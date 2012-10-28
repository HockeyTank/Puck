class LocalLeague < ActiveRecord::Base
  attr_accessible :name
  
  has_many :rink_local_leagues
  has_many :rinks, :through => :rink_local_leagues
end
