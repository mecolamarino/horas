class Size < ActiveRecord::Base
  attr_accessible :pulgadas
  has_many :screens
end
