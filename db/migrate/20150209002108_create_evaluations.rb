class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      #perform
      t.float :gScore
      t.float :qScore
      t.float :iScore

      #leader
      t.float :rScore
      t.float :aScore
      t.float :mScore
      t.float :isScore

      #mgmt
      t.float :owScore
      t.float :dScore
      t.float :oScore

      #competence
      t.float :kScore
      t.float :pScore
      t.float :lScore
      
      t.float :evalScore
      t.integer :employee_id
      t.integer :rater_id
      
      t.timestamps
    end
  end
end