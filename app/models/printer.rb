class Printer < ActiveRecord::Base
  attr_accessible :mark_id, :modelo, :type_id
  has_many :computers
  belongs_to :mark
  belongs_to :type
end
