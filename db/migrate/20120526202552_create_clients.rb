class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :nickname
      t.string :company_id
      t.string :email1
      t.string :email2
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
