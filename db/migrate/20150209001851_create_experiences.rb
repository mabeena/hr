class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :company
      t.date :startdate
      t.date :enddate
      t.string :field
      t.integer :employee_id

      t.timestamps
    end
  end
end
