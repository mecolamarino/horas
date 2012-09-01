class Owner < ActiveRecord::Base
  attr_accessible :lastname, :mail, :name, :phone, :web
  has_many :hours
  has_many :proyects
end
