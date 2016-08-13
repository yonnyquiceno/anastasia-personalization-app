class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :photo
      t.string :description

      t.timestamps null: false
    end
  end
end
