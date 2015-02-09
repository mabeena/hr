class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :institution
      t.string :concentration
      t.date :edate
      t.string :completed

      t.timestamps
    end
  end
end
