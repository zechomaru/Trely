class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :url
      t.string :title
      t.string :subtitle
      t.string :buttom
      t.text :paso_one
      t.text :paso_two
      t.text :paso_tree
      t.boolean :visibility
      t.references :service, index: true, foreign_key: true
      t.references :bundle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
