class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :company_id
      t.string :ip
      t.string :nombre
      t.string :password
      t.string :mac
      t.string :numserie
      t.string :fechacompra
      t.string :motherboard_id
      t.string :fechacompmother
      t.string :microprocessor_id
      t.string :fechacompmicro
      t.string :memory_id
      t.string :cantidadmemoria
      t.string :fechacompmemoria
      t.string :disk_id
      t.string :fechacompdisk
      t.string :printer_id
      t.string :fechacompimpresora
      t.string :scanner_id
      t.string :fechacompscanner
      t.string :screen_id
      t.string :fechacompmonitor
      t.string :system_id
      t.string :fechacompsisop
      t.string :numerolicen
      t.string :antivirus
      t.string :software2
      t.string :software3
      t.string :software4
      t.string :software5
      t.string :software6
      t.string :placavideo
      t.string :placared
      t.string :unidadoptica
      t.text :aclaraciones

      t.timestamps
    end
  end
end
