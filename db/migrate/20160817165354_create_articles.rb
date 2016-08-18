class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :article_name
      t.string :description
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :dimension
      t.boolean :available

      t.timestamps null: false
    end
  end
end
