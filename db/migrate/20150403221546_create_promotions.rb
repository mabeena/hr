class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :degree
      t.string :level
      t.string :name

      t.timestamps
    end
  end
end
