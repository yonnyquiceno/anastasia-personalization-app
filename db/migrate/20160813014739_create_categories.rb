class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :description
      t.string :image
      t.string :dimension

      t.timestamps null: false
    end
  end
end
