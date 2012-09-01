class Type < ActiveRecord::Base
  attr_accessible :nombre
  has_many :screens
  has_many :printers
end
