class CreateMicroprocessors < ActiveRecord::Migration
  def change
    create_table :microprocessors do |t|
      t.string :modelo
      t.string :nombre
      t.string :velocidad
      t.string :mark_id

      t.timestamps
    end
  end
end
