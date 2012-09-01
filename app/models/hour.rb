class Hour < ActiveRecord::Base
  attr_accessible :autorizado, :client_id, :detalle, :factura, :fecha, :hora, :horas, :owner_id, :company_id
  belongs_to :client
  belongs_to :owner
  belongs_to :company
end
