class MaterialPart < ActiveRecord::Base
  belongs_to :product
  belongs_to :material
  belongs_to :part
end
