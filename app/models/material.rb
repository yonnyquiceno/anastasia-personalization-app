class Material < ActiveRecord::Base
  has_many :material_parts
  has_many :parts, through: :material_parts
end
