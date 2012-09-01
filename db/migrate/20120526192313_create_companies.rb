class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nombre
      t.string :cuit
      t.string :direccion
      t.string :web
      t.string :telefono1
      t.string :telefono2
      t.string :telefono3
      t.string :contacto

      t.timestamps
    end
  end
end
