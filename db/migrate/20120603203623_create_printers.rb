class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :modelo
      t.string :mark_id
      t.string :type_id

      t.timestamps
    end
  end
end
