class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :level
      t.string :role

      t.timestamps
    end
  end
end
