class AddColorToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :color, :string
  end
end
