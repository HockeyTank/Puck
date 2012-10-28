class DevelopmentalProgram < ActiveRecord::Base
  attr_accessible :name

  has_many :rink_developmental_programs
  has_many :rinks, :through => :rink_developmental_programs
end
