class Rink < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscity, :addressstate, :addresszip, :indoor, :name, :notes, :openhockey, :phone1, :phone2, :proshop, :sticktime, :surfacecount, :website,
  :rink_surfaces_attributes 

  has_many :rink_surfaces
  has_many :surfaces, :through => :rink_surfaces  
  
  accepts_nested_attributes_for :rink_surfaces, :reject_if => :all_blank, :allow_destroy => true
end
