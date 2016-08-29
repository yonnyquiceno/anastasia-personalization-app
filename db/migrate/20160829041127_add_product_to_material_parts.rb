class AddProductToMaterialParts < ActiveRecord::Migration
  def change
    add_reference :material_parts, :product, index: true, foreign_key: true
  end
end
