class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.string :url
      t.string :nombre
      t.string :company_id
      t.string :estado
      t.text :detalle
      t.text :observacion
      t.string :owner_id

      t.timestamps
    end
  end
end
