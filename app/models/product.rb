class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :article
  has_many :material_parts
  has_many :parts
  has_many :parts, through: :material_parts
end
