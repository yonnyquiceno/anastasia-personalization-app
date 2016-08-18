class RemoveDimensionFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :dimension, :string
  end
end
