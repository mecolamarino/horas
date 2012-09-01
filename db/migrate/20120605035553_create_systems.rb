class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :nombre
      t.string :version

      t.timestamps
    end
  end
end
