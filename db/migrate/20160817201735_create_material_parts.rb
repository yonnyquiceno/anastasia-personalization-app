class CreateMaterialParts < ActiveRecord::Migration
  def change
    create_table :material_parts do |t|
      t.references :material, index: true, foreign_key: true
      t.references :part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
