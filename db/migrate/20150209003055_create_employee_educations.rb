class CreateEmployeeEducations < ActiveRecord::Migration
  def change
    create_table :employee_educations do |t|
      t.integer :employee_id
      t.integer :education_id

      t.timestamps
    end
  end
end
