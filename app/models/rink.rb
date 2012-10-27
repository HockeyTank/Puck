class Rink < ActiveRecord::Base
  attr_accessible :address1, :address2, :addresscity, :addressstate, :addresszip, :indoor, :name, :notes, :openhockey, :phone1, :phone2, :proshop, :sticktime, :surfacecount, :website
end
