class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :reference_name
      t.string :description
      t.string :image
      t.string :dimension

      t.timestamps null: false
    end
  end
end
