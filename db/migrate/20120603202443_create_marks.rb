class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
