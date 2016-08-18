class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :material_name
      t.float :total_weight

      t.timestamps null: false
    end
  end
end
