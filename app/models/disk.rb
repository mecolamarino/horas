class Disk < ActiveRecord::Base
  attr_accessible :cache, :capacidad, :mark_id, :modelo
  belongs_to :mark
  has_many :computers
end
