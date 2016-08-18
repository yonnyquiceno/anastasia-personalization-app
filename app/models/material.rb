class Material < ActiveRecord::Base
  has_many :MaterialParts
  has_many :parts, through: :materialparts
end
