class Motherboard < ActiveRecord::Base
  attr_accessible :mark_id, :microprocessor_id, :modelo
  belongs_to :mark
  has_many :computers

end
