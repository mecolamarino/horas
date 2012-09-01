class Computer < ActiveRecord::Base
  attr_accessible :aclaraciones, :cantidadmemoria, :company_id, :fechacompimpresora, :fechacompmemoria, :fechacompmicro, :fechacompmonitor, :fechacompmother, :fechacompra, :fechacompscanner, :fechacompsisop, :ip, :mac, :memory_id, :microprocessor_id, :motherboard_id, :nombre, :numerolicen, :numserie, :password, :placared, :placavideo, :printer_id, :scanner_id, :screen_id, :system_id, :unidadoptica, :disk_id, :fechacompdisk, :antivirus, :software2, :software3, :software4, :software5, :software6
  belongs_to :printer
  belongs_to :screen
  belongs_to :memory
  belongs_to :motherboard
  belongs_to :microprocessor
  belongs_to :system
  belongs_to :scanner
  belongs_to :mark
  belongs_to :company
  belongs_to :disk
end
