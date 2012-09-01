class Proyect < ActiveRecord::Base
  attr_accessible :company_id, :detalle, :estado, :nombre, :observacion, :owner_id, :url
  belongs_to :owner
  belongs_to :company
end
