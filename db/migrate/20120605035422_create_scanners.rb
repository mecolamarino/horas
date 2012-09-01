class CreateScanners < ActiveRecord::Migration
  def change
    create_table :scanners do |t|
      t.string :modelo
      t.string :mark_id

      t.timestamps
    end
  end
end
