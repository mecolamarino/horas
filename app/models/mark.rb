class Mark < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :uniqueness => true
  has_many :memories
  has_many :printers
  has_many :microprocessors
  has_many :motherboards
  has_many :screens
  has_many :scanners
  has_many :computers
  has_many :disks
end
