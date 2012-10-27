class RinkLeague < ActiveRecord::Base
  attr_accessible :display, :value
  
  has_many :league_rinks
  has_many :rinks, :through => :league_rinks
end
