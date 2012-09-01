class Microprocessor < ActiveRecord::Base
  attr_accessible :mark_id, :modelo, :nombre, :velocidad
  has_many :computers
  belongs_to :mark
end
