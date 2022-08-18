class Bid < ApplicationRecord
  has_many :products
  belongs_to :company
  has_many :bid_products
end
