class AddPartsCountToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :parts_count, :integer
  end
end
