class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :capacidad
      t.string :mark_id

      t.timestamps
    end
  end
end
