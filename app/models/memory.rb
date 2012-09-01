class Memory < ActiveRecord::Base
  attr_accessible :capacidad, :mark_id
  has_many :computers
  belongs_to :mark
end
