class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :mail
      t.string :web
      t.integer :client_id
      t.timestamps
    end
  end
end
