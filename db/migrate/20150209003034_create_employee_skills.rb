class CreateEmployeeSkills < ActiveRecord::Migration
  def change
    create_table :employee_skills do |t|
      t.integer :employee_id
      t.integer :skill_id
      t.string :level

      t.timestamps
    end
  end
end
