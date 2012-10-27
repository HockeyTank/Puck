class Surface < ActiveRecord::Base
  attr_accessible :name
  has_many :rink_surfaces
  has_many :rinks, :through => :rink_surfaces
end
