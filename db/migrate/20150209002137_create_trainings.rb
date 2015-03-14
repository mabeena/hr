class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :ttype

      t.timestamps
    end
  end
end
