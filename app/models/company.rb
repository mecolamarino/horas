class Company < ActiveRecord::Base
  attr_accessible :contacto, :cuit, :direccion, :nombre, :telefono1, :telefono2, :telefono3, :web
  has_many :clients
  has_many :hours
  has_many :proyects
  has_many :computers
end
