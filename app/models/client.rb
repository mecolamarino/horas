class Client < ActiveRecord::Base
  attr_accessible :apellido, :company_id, :direccion, :email1, :email2, :nickname, :nombre, :telefono, :user_id
  belongs_to :company
  has_many :hours
  belongs_to :user
end
