#:nodoc:
class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :article
  has_many :parts
end
