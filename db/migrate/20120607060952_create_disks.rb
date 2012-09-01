class CreateDisks < ActiveRecord::Migration
  def change
    create_table :disks do |t|
      t.string :mark_id
      t.string :modelo
      t.string :cache
      t.string :capacidad

      t.timestamps
    end
  end
end
