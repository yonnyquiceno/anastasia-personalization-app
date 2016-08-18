class Part < ActiveRecord::Base
  belongs_to :product
  has_many :MaterialParts
  has_many :materials, through: :materialparts
end
