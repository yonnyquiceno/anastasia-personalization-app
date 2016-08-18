class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :product
  has_many :products, through: :category
end
