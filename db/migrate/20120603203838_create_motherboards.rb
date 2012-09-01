class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.string :modelo
      t.string :mark_id

      t.timestamps
    end
  end
end
