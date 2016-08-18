class RemoveReferenceIdFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :reference_id, :string
  end
end
