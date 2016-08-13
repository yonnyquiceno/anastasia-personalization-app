class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :manufacturer, index: true, foreign_key: true
      t.references :reference, index: true, foreign_key: true
      t.boolean :approved
      t.boolean :sended
      t.float :price

      t.timestamps null: false
    end
  end
end
