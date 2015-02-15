class CreateEmployeeTrainings < ActiveRecord::Migration
  def change
    create_table :employee_trainings do |t|
      t.integer :employee_id
      t.integer :training_id
      t.date :tdate

      t.timestamps
    end
  end
end
