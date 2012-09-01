class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.string :modelo
      t.string :mark_id
      t.string :size_id
      t.string :type_id

      t.timestamps
    end
  end
end
