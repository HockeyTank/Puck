class Rink < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscity, :addressstate, :addresszip, :indoor, :name, :notes, :openhockey, :phone1, :phone2, :proshop, :sticktime, :surfacecount, :website,
  :surfaces_attributes 

  #has_many :league_rinks 
  #has_many :rink_leagues, :through => :league_rinks
  
  #has_many :rink_developmental_programs
  #has_many :developmental_programs, :through => :rink_developmental_programs
 
  has_many :rink_surfaces
  has_many :surfaces, :through => :rink_surfaces  
  
  #accepts_nested_attributes_for :rink_leagues
  accepts_nested_attributes_for :surfaces, :reject_if => :all_blank, :allow_destroy => true
  #accepts_nested_attributes_for :developmental_programs
end
