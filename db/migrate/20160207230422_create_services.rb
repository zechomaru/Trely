class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.references :bundle, index: true, foreign_key: true
      t.float :price
      

      t.timestamps null: false
    end
  end
end
