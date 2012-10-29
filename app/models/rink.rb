class Rink < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscity, :addressstate, :addresszip, :indoor, :name, :notes, :openhockey, :phone1, :phone2, :proshop, :sticktime, :surfacecount, :website,
  :rink_surfaces_attributes, :rink_developmental_programs_attributes, :rink_local_leagues_attributes, :rink_notes_attributes

  has_many :rink_surfaces
  has_many :surfaces, :through => :rink_surfaces  
  has_many :rink_developmental_programs
  has_many :developmental_programs, :through => :rink_developmental_programs 
  has_many :rink_local_leagues
  has_many :local_leagues, :through => :rink_local_leagues
  has_many :rink_notes

  accepts_nested_attributes_for :rink_surfaces, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :rink_developmental_programs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :rink_local_leagues, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :rink_notes, :reject_if => :all_blank, :allow_destroy => true
end
