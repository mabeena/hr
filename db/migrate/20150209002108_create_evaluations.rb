class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.date :sdate
      t.date :edate
      t.integer :communication
      t.integer :attitude
      t.integer :character
      t.integer :potential
      t.integer :performance
      t.integer :employee_id
      t.integer :position_id

      t.timestamps
    end
  end
end