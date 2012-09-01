class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.text :detalle
      t.float :horas
      t.integer :owner_id
      t.string :factura
      t.date :fecha
      t.time :hora
      t.boolean :autorizado
      t.integer :client_id

      t.timestamps
    end
  end
end
