class RinkNote < ActiveRecord::Base
  attr_accessible :rink_id, :comment, :author
  belongs_to :rink
end
