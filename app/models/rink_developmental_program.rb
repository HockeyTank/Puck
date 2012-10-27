class RinkDevelopmentalProgram < ActiveRecord::Base
  attr_accessible :developmental_program_id, :rink_id

  belongs_to :rink
  belongs_to :developmental_program
end
