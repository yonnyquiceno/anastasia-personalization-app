class Part < ActiveRecord::Base
  belongs_to :product
  has_many :material_parts
  has_many :materials, through: :material_parts
  has_many :products, through: :material_parts
end
