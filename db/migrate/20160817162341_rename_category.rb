class RenameCategory < ActiveRecord::Migration
  def change
    def self.up
      rename_table :category, :article
    end

    def self.down
      rename_table :article, :category
    end
  end
end
