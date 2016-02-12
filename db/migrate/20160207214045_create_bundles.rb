class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
